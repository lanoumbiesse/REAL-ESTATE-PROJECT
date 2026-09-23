<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\PaymentAccount;
use App\ManageText;
use Illuminate\Http\Request;

use App\NotificationText;
use App\ValidationText;
use App\Razorpay;
use Image;
use File;

class PaymentAccountController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function index()
    {   $paymentAccount=PaymentAccount::first();
        $websiteLang=ManageText::all();
        if($paymentAccount){
            $razorpay=Razorpay::first();
            return view('admin.payment-account.edit',compact('paymentAccount','websiteLang','razorpay'));
        }

    }

    public function update(Request $request, PaymentAccount $paymentAccount)
    {
        // project demo mode check
        if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end
        $valid_lang=ValidationText::all();
        $rules = [
            'account_mode'=>'required',
            'paypal_client_id'=>'required',
            'paypal_secret'=>'required',
            'paypal_status'=>'required',
        ];
        $customMessages = [
            'account_mode.required' => $valid_lang->where('lang_key','allow')->first()->custom_text,
            'paypal_client_id.required' => $valid_lang->where('lang_key','paypal_client_id')->first()->custom_text,
            'paypal_secret.required' => $valid_lang->where('lang_key','paypal_secret')->first()->custom_text
        ];
        $this->validate($request, $rules, $customMessages);


        $paymentAccount->account_mode=$request->account_mode;
        $paymentAccount->paypal_client_id=$request->paypal_client_id;
        $paymentAccount->paypal_secret=$request->paypal_secret;
        $paymentAccount->paypal_status=$request->paypal_status;
        $paymentAccount->save();
        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_text;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.payment-account.index')->with($notification);
    }


    public function razorpayUpdate(Request $request,$id){
        // project demo mode check
        if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end
        $valid_lang=ValidationText::all();
        $rules = [
            'razorpay_key'=>'required',
            'razorpay_secret'=>'required',
            'name'=>'required',
            'description'=>'required',
            'razorpay_status'=>'required',
            'currency_rate'=>'required',
        ];
        $customMessages = [
            'razorpay_key.required' => $valid_lang->where('lang_key','razorpay_key')->first()->custom_text,
            'razorpay_secret.required' => $valid_lang->where('lang_key','razorpay_secret')->first()->custom_text,
            'name.required' => $valid_lang->where('lang_key','name')->first()->custom_text,
            'description.required' => $valid_lang->where('lang_key','des')->first()->custom_text,
            'currency_rate.required' => $valid_lang->where('lang_key','currency_rate')->first()->custom_text,
        ];
        $this->validate($request, $rules,$customMessages);

        $razorpay=Razorpay::find($id);
        $razorpay->razorpay_key=$request->razorpay_key;
        $razorpay->secret_key=$request->razorpay_secret;
        $razorpay->name=$request->name;
        $razorpay->description=$request->description;
        $razorpay->theme_color=$request->theme_color;
        $razorpay->currency_rate=$request->currency_rate;
        $razorpay->razorpay_status=$request->razorpay_status;
        $razorpay->save();

        if($request->image){
            $old_image=$razorpay->image;
            $image=$request->image;
            $extention=$image->getClientOriginalExtension();
            $image_name= 'razorpay-'.date('Y-m-d-h-i-s-').rand(999,9999).'.'.$extention;
            $image_name='uploads/website-images/'.$image_name;
            Image::make($image)
                ->save(public_path().'/'.$image_name);
            $razorpay->image=$image_name;
            $razorpay->save();
            if(File::exists(public_path().'/'.$old_image))unlink(public_path().'/'.$old_image);
        }



        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_text;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.payment-account.index')->with($notification);

    }


    public function stripeUpdate(Request $request , $id){
            // project demo mode check
        if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end

        $valid_lang=ValidationText::all();
        $rules = [
            'stripe_key'=>'required',
            'stripe_secret'=>'required'
        ];
        $customMessages = [
            'stripe_key.required' => $valid_lang->where('lang_key','stripe_key')->first()->custom_text,
            'stripe_secret.required' => $valid_lang->where('lang_key','stripe_secret')->first()->custom_text
        ];


       $this->validate($request, $rules, $customMessages);
       $paymentAccount=PaymentAccount::find($id);
       $paymentAccount->stripe_key=$request->stripe_key;
       $paymentAccount->stripe_secret=$request->stripe_secret;
       $paymentAccount->stripe_status=$request->stripe_status;
       $paymentAccount->save();
       $notify_lang=NotificationText::all();
       $notification=$notify_lang->where('lang_key','update')->first()->custom_text;
       $notification=array('messege'=>$notification,'alert-type'=>'success');

       return redirect()->route('admin.payment-account.index')->with($notification);
   }


   public function bankUpdate(Request $request,$id){

        // project demo mode check
        if(env('PROJECT_MODE')==0){
            $notification=array('messege'=>env('NOTIFY_TEXT'),'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
        // end

        $valid_lang=ValidationText::all();
        $rules = [
            'bank_account'=>'required',
            'bank_status'=>'required',
        ];

        $customMessages = [
            'bank_account.required' => $valid_lang->where('lang_key','bank_account')->first()->custom_text,
        ];

        $this->validate($request, $rules,$customMessages);

        $paymentAccount=PaymentAccount::find($id);
        $paymentAccount->bank_account=$request->bank_account;
        $paymentAccount->bank_status=$request->bank_status;
        $paymentAccount->save();
        $notify_lang=NotificationText::all();
        $notification=$notify_lang->where('lang_key','update')->first()->custom_text;
        $notification=array('messege'=>$notification,'alert-type'=>'success');

        return redirect()->route('admin.payment-account.index')->with($notification);
    }



}
