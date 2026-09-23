<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Package;
use App\Order;
use App\Setting;
use App\PaymentAccount;
use App\NotificationText;
use App\Navigation;
use App\ManageText;
use App\BannerImage;
use App\EmailTemplate;
use Carbon\Carbon;
use App\Mail\OrderConfirmation;
use Mail;
use Auth;
use Session;
Use Stripe;
use App\Listing;
use App\Property;
use App\Razorpay;
use App\Helpers\MailHelper;
use Str;
use Razorpay\Api\Api;
use Exception;
class PaymentController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:web');
    }


    public function purchase($id){

        $package=Package::find($id);
        $user=Auth::guard('web')->user();;
        if($package){
            if($package->package_type==0){

                // project demo mode check
                if(env('PROJECT_MODE')==0){
                    $notification=array(
                        'messege'=>env('NOTIFY_TEXT'),
                        'alert-type'=>'error'
                    );

                    return redirect()->back()->with($notification);
                }
                // end

                $setting=Setting::first();
                $activeOrder=Order::where(['user_id'=>$user->id,'status'=>1])->count();
                $oldOrders=Order::where('user_id',$user->id)->update(['status'=>0]);
                $order=new Order();
                $order->user_id=$user->id;
                $order->order_id='#'.rand(22,44).date('Ydmis');
                $order->package_id=$package->id;
                $order->purchase_date=date('Y-m-d');
                $order->expired_day=$package->number_of_days;
                $order->expired_date=date('Y-m-d', strtotime($package->number_of_days.' days'));
                $order->status=1;
                $order->payment_status=1;
                $order->amount_usd=0;
                $order->amount_real_currency=0;
                $order->currency_type=$setting->currency_name;
                $order->currency_icon=$setting->currency_icon;
                $order->save();

                // active and  in-active minimum limit listing
                $userProperties=Property::where('user_id',$user->id)->orderBy('id','desc')->get();
                if($userProperties->count() !=0){
                    if($package->number_of_property !=-1){
                        foreach($userProperties as $index => $listing){
                            if(++$index <= $package->number_of_property){
                                $listing->status=1;
                                $listing->save();
                            }else{
                                $listing->status=0;
                                $listing->save();
                            }
                        }
                    }elseif($package->number_of_property ==-1){
                        foreach($userProperties as $index => $listing){
                            $listing->status=1;
                            $listing->save();
                        }
                    }
                }
                // end inactive


                 // setup expired date
                if($userProperties->count() != 0){
                    foreach($userProperties as $index => $listing){
                        $listing->expired_date=$order->expired_date;
                        $listing->save();
                    }
                }


                $notify_lang=NotificationText::all();
                $notification=$notify_lang->where('lang_key','order_success')->first()->custom_text;
                $notification=array('messege'=>$notification,'alert-type'=>'success');
                return redirect()->route('user.my-order')->with($notification);
            }else{

                $banner_image=BannerImage::find(12);
                $menus=Navigation::all();
                $currency=Setting::first();
                $setting=Setting::first();
                $stripe=PaymentAccount::first();
                $websiteLang=ManageText::all();
                $package_price=$package->price;
                $razorpay=Razorpay::first();
                $paymentSetting=$stripe;
                return view('user.profile.payment',compact('banner_image','menus','currency','setting','stripe','package','websiteLang','package_price','razorpay','paymentSetting'));
            }
        }else{
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
            $notification=array('messege'=>$notification,'alert-type'=>'error');

            return redirect()->route('pricing.plan')->with($notification);
        }


    }

    public function stripePayment(Request $request,$id){

        // project demo mode check
        if(env('PROJECT_MODE')==0){
            $notification=array(
                'messege'=>env('NOTIFY_TEXT'),
                'alert-type'=>'error'
            );

            return redirect()->back()->with($notification);
        }
        // end

        $stripe=PaymentAccount::first();
        $currency=Setting::first();
        $package=Package::find($id);
        $user=Auth::guard('web')->user();
        if($package){
            Stripe\Stripe::setApiKey($stripe->stripe_secret);

            $setting=Setting::first();
            $amount_usd=$package->price * $setting->currency_rate;
            $result=Stripe\Charge::create ([
                    "amount" =>$amount_usd * 100,
                    "currency" => 'USD',
                    "source" => $request->stripeToken,
                    "description" => env('APP_NAME')
            ]);


            $activeOrder=Order::where(['user_id'=>$user->id,'status'=>1])->count();
            $oldOrders=Order::where('user_id',$user->id)->update(['status'=>0]);


            $order=new Order();
            $order->user_id=$user->id;
            $order->order_id='#'.rand(22,44).date('Ydmis');
            $order->package_id=$package->id;
            $order->purchase_date=date('Y-m-d');
            $order->expired_day=$package->number_of_days;
            $order->expired_date=$package->number_of_days ==-1 ? null : date('Y-m-d', strtotime($package->number_of_days.' days'));
            $order->payment_method="Stripe";
            $order->transaction_id=$result->balance_transaction;
            $order->payment_status=1;
            $order->amount_usd=$amount_usd;
            $order->amount_real_currency=$package->price;
            $order->currency_type=$setting->currency_name;
            $order->currency_icon=$setting->currency_icon;
            $order->status=1;
            $order->save();

            // active and  in-active minimum limit listing
            $userProperties=Property::where('user_id',$user->id)->orderBy('id','desc')->get();
            if($userProperties->count() !=0){
                if($package->number_of_property !=-1){
                    foreach($userProperties as $index => $listing){
                        if(++$index <= $package->number_of_property){
                            $listing->status=1;
                            $listing->save();
                        }else{
                            $listing->status=0;
                            $listing->save();
                        }
                    }
                }elseif($package->number_of_property ==-1){
                    foreach($userProperties as $index => $listing){
                        $listing->status=1;
                        $listing->save();
                    }
                }
            }
            // end inactive

            // setup expired date
            if($userProperties->count() != 0){
                foreach($userProperties as $index => $listing){
                    $listing->expired_date=$order->expired_date;
                    $listing->save();
                }
            }


            MailHelper::setMailConfig();


            $order_details='Purchase Date: '.$order->purchase_date.'<br>';
            $order_details .='Expired Date: '.$order->expired_date;

            // send email
            $template=EmailTemplate::where('id',6)->first();
            $message=$template->description;
            $subject=$template->subject;
            $message=str_replace('{{user_name}}',$user->name,$message);
            $message=str_replace('{{payment_method}}','Stripe',$message);
            $total_amount=$currency->currency_icon. $package->price;
            $message=str_replace('{{amount}}',$total_amount,$message);
            $message=str_replace('{{order_details}}',$order_details,$message);
            Mail::to($user->email)->send(new OrderConfirmation($message,$subject));



            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','order_success')->first()->custom_text;
            $notification=array('messege'=>$notification,'alert-type'=>'success');
            return redirect()->route('user.my-order')->with($notification);

        }else{
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
            $notification=array('messege'=>$notification,'alert-type'=>'error');

            return redirect()->route('pricing.plan')->with($notification);
        }



    }

    public function bankPayment(Request $request){
        // project demo mode check
        if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end

        $this->validate($request,[
            'tran_id'=>'required'
        ]);


        $stripe=PaymentAccount::first();
        $currency=Setting::first();
        $setting=Setting::first();
        $package=Package::find($request->package_id);
        $user=Auth::guard('web')->user();
        $amount_usd=$package->price * $setting->currency_rate;
        if($package){
            $order=new Order();
            $order->user_id=$user->id;
            $order->order_id='#'.rand(22,44).date('Ydmis');
            $order->package_id=$package->id;
            $order->purchase_date=date('Y-m-d');
            $order->expired_day=$package->number_of_days;
            $order->expired_date=$package->number_of_days ==-1 ? null : date('Y-m-d', strtotime($package->number_of_days.' days'));
            $order->payment_method="Bank Payment";
            $order->transaction_id=$request->tran_id;
            $order->payment_status=0;
            $order->amount_usd=$amount_usd;
            $order->amount_real_currency=$package->price;
            $order->currency_type=$setting->currency_name;
            $order->currency_icon=$setting->currency_icon;
            $order->status=0;
            $order->save();

            MailHelper::setMailConfig();

            $order_details='Purchase Date: '.$order->purchase_date.'<br>';
            $order_details .='Expired Date: '.$order->expired_date;

            // send email
            $template=EmailTemplate::where('id',6)->first();
            $message=$template->description;
            $subject=$template->subject;
            $message=str_replace('{{user_name}}',$user->name,$message);
            $message=str_replace('{{payment_method}}','Bank Payment',$message);
            $total_amount=$currency->currency_icon. $package->price;
            $message=str_replace('{{amount}}',$total_amount,$message);
            $message=str_replace('{{order_details}}',$order_details,$message);
            Mail::to($user->email)->send(new OrderConfirmation($message,$subject));

            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','bank_order_success')->first()->custom_text;
            $notification=array('messege'=>$notification,'alert-type'=>'success');
            return redirect()->route('user.my-order')->with($notification);

        }else{
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
            $notification=array('messege'=>$notification,'alert-type'=>'error');

            return redirect()->route('pricing.plan')->with($notification);
        }


    }


    public function razorPay(Request $request,$id){
        // project demo mode check
        if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end

        $razorpay=Razorpay::first();
        $input = $request->all();
        $api = new Api($razorpay->razorpay_key,$razorpay->secret_key);
        $payment = $api->payment->fetch($input['razorpay_payment_id']);
        if(count($input)  && !empty($input['razorpay_payment_id'])) {
            try {
                $response = $api->payment->fetch($input['razorpay_payment_id'])->capture(array('amount'=>$payment['amount']));
                $payId=$response->id;
                $currency=Setting::first();
                $package=Package::find($id);
                $user=Auth::guard('web')->user();
                if($package){

                    $setting=Setting::first();
                    $amount_usd=$package->price * $setting->currency_rate;

                    $activeOrder=Order::where(['user_id'=>$user->id,'status'=>1])->count();
                    $oldOrders=Order::where('user_id',$user->id)->update(['status'=>0]);

                    $order=new Order();
                    $order->user_id=$user->id;
                    $order->order_id='#'.rand(22,44).date('Ydmis');
                    $order->package_id=$package->id;
                    $order->purchase_date=date('Y-m-d');
                    $order->expired_day=$package->number_of_days;
                    $order->expired_date=$package->number_of_days ==-1 ? null : date('Y-m-d', strtotime($package->number_of_days.' days'));
                    $order->payment_method="RazorPay";
                    $order->transaction_id=$payId;
                    $order->payment_status=1;
                    $order->amount_usd=$amount_usd;
                    $order->amount_real_currency=$package->price;
                    $order->currency_type=$setting->currency_name;
                    $order->currency_icon=$setting->currency_icon;
                    $order->status=1;
                    $order->save();

                    // active and  in-active minimum limit listing
                    $userProperties=Property::where('user_id',$user->id)->orderBy('id','desc')->get();
                    if($userProperties->count() !=0){
                        if($package->number_of_property !=-1){
                            foreach($userProperties as $index => $listing){
                                if(++$index <= $package->number_of_property){
                                    $listing->status=1;
                                    $listing->save();
                                }else{
                                    $listing->status=0;
                                    $listing->save();
                                }
                            }
                        }elseif($package->number_of_property ==-1){
                            foreach($userProperties as $index => $listing){
                                $listing->status=1;
                                $listing->save();
                            }
                        }
                    }
                    // end inactive

                    // setup expired date
                    if($userProperties->count() != 0){
                        foreach($userProperties as $index => $listing){
                            $listing->expired_date=$order->expired_date;
                            $listing->save();
                        }
                    }

                    MailHelper::setMailConfig();

                    $order_details='Purchase Date: '.$order->purchase_date.'<br>';
                    $order_details .='Expired Date: '.$order->expired_date;

                    // send email
                    $template=EmailTemplate::where('id',6)->first();
                    $message=$template->description;
                    $subject=$template->subject;
                    $message=str_replace('{{user_name}}',$user->name,$message);
                    $message=str_replace('{{payment_method}}','RazorPay',$message);
                    $total_amount=$currency->currency_icon. $package->price;
                    $message=str_replace('{{amount}}',$total_amount,$message);
                    $message=str_replace('{{order_details}}',$order_details,$message);
                    Mail::to($user->email)->send(new OrderConfirmation($message,$subject));

                    $notify_lang=NotificationText::all();
                    $notification=$notify_lang->where('lang_key','order_success')->first()->custom_text;
                    $notification=array('messege'=>$notification,'alert-type'=>'success');
                    return redirect()->route('user.my-order')->with($notification);

                }else{
                    $notify_lang=NotificationText::all();
                    $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
                    $notification=array('messege'=>$notification,'alert-type'=>'error');

                    return redirect()->route('pricing.plan')->with($notification);
                }

            } catch (Exception $e) {
                $notify_lang=NotificationText::all();
                $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
                $notification=array('messege'=>$notification,'alert-type'=>'error');
                return redirect()->back()->with($notification);
            }
        }
        return "payment success";
    }
}
