<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Slider;
use App\HomeSection;
use App\Feature;
use App\Blog;
use App\Testimonial;
use App\About;
use App\AboutSection;
use App\Partner;
use App\BlogCategory;
use App\ContactUs;
use App\Setting;
use App\BlogComment;
use App\Rules\Captcha;
use App\ContactInformation;
use App\Location;
use App\Listing;
use App\Day;
use App\Aminity;
use App\Wishlist;
use App\ListingReview;
use App\Subscribe;
use App\ConditionPrivacy;
use App\EmailTemplate;
use App\SeoText;
use App\BannerImage;
use App\NotificationText;
use App\ValidationText;
use App\ManageText;
use App\Navigation;
use App\CustomPage;
use Storage;
use Str;
use Mail;
use Session;
use App\Mail\SubscribeUsNotification;
use Auth;
use App\Order;
use App\CustomPaginator;
use App\Admin;
use App\User;
use App\Helpers\MailHelper;
use App\Award;
use App\Service;
use App\Faq;
use App\Property;
use App\Package;
use App\PropertyType;

use App\PropertyAminity;
use Vedmant\FeedReader\Facades\FeedReader;
use App\ListingCategory;
use App\City;
use App\PropertyPurpose;


use App\PropertyImage;

use App\NearestLocation;
use App\PropertyReview;

use File;
use Image;

use DB;


use App\PropertyNearestLocation;

use Illuminate\Support\Facades\Http;
use Illuminate\Pagination\Paginator;

class HomeController extends Controller
{

    public function index(){
        $banner=Slider::first();
        $blogs=Blog::where(['status'=>1,'show_homepage'=>1])->get();
        $seo_text=SeoText::find(1);
        $sections=HomeSection::all();
        $currency=Setting::first();
        $awards=Award::where('status',1)->get();
        $services=Service::where('status',1)->get();
        $default_profile_image=BannerImage::find(15);
        $testimonials=Testimonial::where('status',1)->get();
        $properties=Property::where('status',1)->orderBy('id', 'desc')->get();
        $agents=User::where('status',1)->orderBy('id','desc')->get();
        $orders=Order::where(['status'=>1])->get();
        $propertyTypes=PropertyType::where('status',1)->orderBy('type','asc')->get();
        $cities=City::where('status',1)->orderBy('name','asc')->get();
        $features=Feature::all();
        $feature_image=BannerImage::find(23);
        $testimonial_bg=BannerImage::find(25);
        $agent_bg=BannerImage::find(26);
        $websiteLang=ManageText::all();
        return view('user.index',compact('banner','blogs','seo_text','sections','currency','awards','services','default_profile_image','testimonials','properties','agents','orders','feature_image','features','propertyTypes','cities','websiteLang','testimonial_bg','agent_bg'));
    }
    
       public function index1(){

        
       $xmlString = file_get_contents('https://bcrm_org.s3.amazonaws.com/xml/3470/1656479602_5_3470_52551.xml');
        $xmlObject = simplexml_load_string($xmlString,"SimpleXMLElement",LIBXML_NOCDATA);

        $json = json_encode($xmlObject);

       $phpArray = json_decode($json, true);
        
      // dd($phpArray['Property']);
      
  
     
     for ($i = 0 ; $i <= 1 ; $i++) {
         
  
     
     if (DB::table('properties')->where('bayut_id',$phpArray['Property'][$i]['Property_Ref_No'] )->doesntExist()) {
         
         $idcity = 0;
         $idproperty = 0;
         
         if (DB::table('cities')->where('name',$phpArray['Property'][$i]['Locality'] )->doesntExist()) {
             
                           $idcity =  DB::table('cities')->insertGetId([
      'country_state_id' => 13,
      'name' => $phpArray['Property'][$i]['Locality'],
      'slug' => $phpArray['Property'][$i]['Locality'],
      'status' => 1
]);

}

else {
    $idcity = DB::table('cities')->where('name', $phpArray['Property'][$i]['Locality'])->value('id');
}

if (DB::table('property_types')->where('type',$phpArray['Property'][$i]['Property_Type'] )->doesntExist()) {
     $idproperty =  DB::table('property_types')->insertGetId([
      'type' => $phpArray['Property'][$i]['Property_Type'],
      'slug' => $phpArray['Property'][$i]['Property_Type'],
      'status' => 1
]);
}
else {
    
    $idproperty = DB::table('property_types')->where('type', $phpArray['Property'][$i]['Property_Type'])->value('id');
}

     $idpurpose = 0;

     if ($phpArray['Property'][$i]['Property_purpose'] =='Rent')
     {
         $idpurpose = 2;
     }
     else if ($phpArray['Property'][$i]['Property_purpose']=='Buy' && $phpArray['Property'][$i]['Completion_Status'] !='Ready' ){
         $idpurpose = 4;
     }
     else {
          $idpurpose = 1;
     }
         
    // ...
    
           $property=new Property();
      //  $admin=Auth::guard('admin')->user();
        $property->admin_id=4;
        $property->title=$phpArray['Property'][$i]['Property_Title'];
        $property->slug=$phpArray['Property'][$i]['Property_Title'];
        $property->property_type_id=$idproperty;
        $property->city_id=$idcity;
        $property->address=$phpArray['Property'][$i]['Locality'].' ,Dubai , United Arab Emirates';
        $property->phone="+971504288727";
        $property->email="infos@ucgrealestate.ae";
        $property->website='www.ucgrealestate.ae';
        $property->property_purpose_id=$idpurpose;
        $property->price=$phpArray['Property'][$i]['Price'];
        
        if ($phpArray['Property'][$i]['Property_purpose'] =='Rent') {
        $property->period='Yearly';
     }
        
        $property->area=$phpArray['Property'][$i]['Property_Size'];
        $property->number_of_unit=1;
        $property->number_of_room=1;
        $property->number_of_bedroom=$phpArray['Property'][$i]['Bedrooms'];
        $property->number_of_bathroom=$phpArray['Property'][$i]['Bathroom'];
        $property->number_of_floor=1;
        $property->number_of_kitchen=1;
        $property->number_of_parking=$phpArray['Property'][$i]['Bathroom'];
        $property->video_link="";
        $property->google_map_embed_code='<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3613.941871640388!2d55.134891914355336!3d25.069959243004387!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f13435f3abe57%3A0xb4c00b9d46311cd0!2sSheikh%20Zayed%20Rd%20-%20Dubai!5e0!3m2!1sfr!2sae!4v1656848781711!5m2!1sfr!2sae" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
        $property->description=$phpArray['Property'][$i]['Property_Description'];
        $property->status=1;
        $property->is_featured=1;
        $property->urgent_property=1;
        $property->top_property=1;
        $property->seo_title=$phpArray['Property'][$i]['Property_Title'];
        $property->seo_description=$phpArray['Property'][$i]['Property_Title'];
        $property->thumbnail_image=$phpArray['Property'][$i]['Images']['Image'][0];
        $property->banner_image = $phpArray['Property'][$i]['Images']['Image'][1];
        
        $property->bayut_id = $phpArray['Property'][$i]['Property_Ref_No'];
         $property->save();
         
         $propertyImage=new PropertyImage();
         $propertyImage->image= $phpArray['Property'][$i]['Images']['Image'][2];
                    $propertyImage->property_id=$property->id;
                    $propertyImage->save();
                    
               $propertyImage=new PropertyImage();
               $propertyImage->image= $phpArray['Property'][$i]['Images']['Image'][3];
                    $propertyImage->property_id=$property->id;
                    $propertyImage->save();  
                    
                     $propertyImage=new PropertyImage();
               $propertyImage->image= $phpArray['Property'][$i]['Images']['Image'][4];
                    $propertyImage->property_id=$property->id;
                    $propertyImage->save(); 
                    
                     $propertyImage=new PropertyImage();
               $propertyImage->image= $phpArray['Property'][$i]['Images']['Image'][5];
                    $propertyImage->property_id=$property->id;
                    $propertyImage->save(); 
                    
                    
                     $propertyImage=new PropertyImage();
               $propertyImage->image= $phpArray['Property'][$i]['Images']['Image'][6];
                    $propertyImage->property_id=$property->id;
                    $propertyImage->save(); 
                    
                    
                     $propertyImage=new PropertyImage();
               $propertyImage->image= $phpArray['Property'][$i]['Images']['Image'][7];
                    $propertyImage->property_id=$property->id;
                    $propertyImage->save(); 
                    
                     $propertyImage=new PropertyImage();
               $propertyImage->image= $phpArray['Property'][$i]['Images']['Image'][8];
                    $propertyImage->property_id=$property->id;
                    $propertyImage->save(); 
                    
                    
                     $propertyImage=new PropertyImage();
               $propertyImage->image= $phpArray['Property'][$i]['Images']['Image'][9];
                    $propertyImage->property_id=$property->id;
                    $propertyImage->save(); 
                    
                  
                    if (count($phpArray['Property'][$i]['Features']) > 0) {
                        
                  for($a = 0 ; $a < count($phpArray['Property'][$i]['Features']['Feature']) ;$a++ ) {
                      
                      
                      
                     if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Barbeque Area") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 1
                                           ]);
                         
                     }
                       else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Day Care Center") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 2
                                           ]);
                         
                     }
                     
                      else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Kids Play Area") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 3
                                           ]);
                         
                     }
                     
                     else  if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Lawn or Garden") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 4
                                           ]);
                         
                     }
                     
                      else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Cafeteria or Canteen") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 5
                                           ]);
                         
                     }
                     
                        else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "First Aid Medical Center") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 6
                                           ]);
                         
                     }
                     
                        else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Gym or Health Club") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 7
                                           ]);
                         
                     }
                         else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Jacuzzi") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 14
                                           ]);
                         
                     }
                         else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Sauna") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 15
                                           ]);
                         
                     }
                     
                        else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Steam Room") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 16
                                           ]);
                         
                     }
                     
                         else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Swimming Pool") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 20
                                           ]);
                         
                     }
                     
                          else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Facilities for Disabled") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 21
                                           ]);
                         
                     }
                        else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Laundry Room") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 22
                                           ]);
                         
                     }
                     
                       else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Laundry Facility") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 23
                                           ]);
                         
                     }
                     
                       else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Shared Kitchen") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 24
                                           ]);
                         
                     }
                     
                       else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Balcony or Terrace") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 25
                                           ]);
                         
                     }
                        else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Service Elevators") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 26
                                           ]);
                         
                     }
                     
                       else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Lobby in Building") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 27
                                           ]);
                         
                     }
                     
                         else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Prayer Room") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 28
                                           ]);
                         
                     }
                     
                         else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Reception/Waiting Room") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 29
                                           ]);
                         
                     }
                     
                         else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Business Center") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 30
                                           ]);
                         
                     }
                     
                         else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Conference Room") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 31
                                           ]);
                         
                     }
                     
                        else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Security Staff") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 32
                                           ]);
                         
                     }
                     
                        else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "CCTV Security") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 33
                                           ]);
                         
                     }
                     
                         else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Freehold") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 34
                                           ]);
                         
                     }
                     
                          else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "ATM Facility") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 35
                                           ]);
                         
                     }
                     
                       else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Maids Room") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 36
                                           ]);
                         
                     }
                     
                       else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "24 Hours Concierge") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 37
                                           ]);
                         
                     }
                     
                         else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Broadband Internet") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 38
                                           ]);
                         
                     }
                     
                          else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Satellite/Cable TV") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 39
                                           ]);
                         
                     }
                     
                       else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Intercom") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 40
                                           ]);
                         
                     }
                     
                      else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Double Glazed Windows") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 41
                                           ]);
                         
                     }
                     
                       else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Centrally Air-Conditioned") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 42
                                           ]);
                         
                     }
                     
                       else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Central Heating") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 43
                                           ]);
                         
                     }
                     
                       else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Electricity Backup") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 44
                                           ]);
                         
                     }
                     
                        else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Furnished") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 45
                                           ]);
                         
                     }
                     
                          else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Storage Areas") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 46
                                           ]);
                         
                     }
                     
                            else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Study Room") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 47
                                           ]);
                         
                     }
                     
                           else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Waste Disposal") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 48
                                           ]);
                         
                     }
                     
                      else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Maintenance Staff") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 50
                                           ]);
                         
                     }
                       else if ($phpArray['Property'][$i]['Features']['Feature'][$a] == "Cleaning Services") {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 51
                                           ]);
                         
                     }
                     
                    
                  }
                    }
                  
                    else  {
                         
                                              DB::table('property_aminities')->insert([
                                              'property_id' => $property->id,
                                            'aminity_id' => 44
                                           ]);
                         
                     }
                      
      
 
 
 



}
       }
 
       
           

//dd($response);






    }



    public function aboutUs(){
        $about=About::first();
        $banner_image=BannerImage::find(2);
        $awards=Award::where('status',1)->get();
        $partners=Partner::where('status',1)->get();
        $sections=AboutSection::all();
        $seo_text=SeoText::find(3);
        $menus=Navigation::all();
        $websiteLang=ManageText::all();
        return view('user.about-us',compact('about','banner_image','awards','partners','sections','seo_text','menus','websiteLang'));
    }


    public function blog(){
        Paginator::useBootstrap();
        $banner_image=BannerImage::find(5);
        $paginator=CustomPaginator::where('id',1)->first()->qty;
        $blogs=Blog::where('status',1)->orderBy('id','desc')->paginate($paginator);
        $seo_text=SeoText::find(6);
        $menus=Navigation::all();
        $websiteLang=ManageText::all();
        return view('user.blog.index',compact('banner_image','blogs','seo_text','menus','websiteLang'));
    }

    public function blogDetails($slug){

        $blog=Blog::where(['slug'=>$slug,'status'=>1])->first();
        if($blog){
            $blog->view +=1;
            $blog->save();

            $blogCategories=BlogCategory::where('status',1)->get();
            $popularBlogs=Blog::where('id','!=',$blog->id)->orderBy('view','desc')->get()->take(6);
            $commentSetting=Setting::first();
            $banner_image=BannerImage::find(5);
            $menus=Navigation::all();
            $default_profile_image=BannerImage::find(15);
            $websiteLang=ManageText::all();
            return view('user.blog.show',compact('blog','blogCategories','popularBlogs','commentSetting','banner_image','menus','default_profile_image','websiteLang'));
        }else{
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
            $notification=array('messege'=>$notification,'alert-type'=>'error');

            return back()->with($notification);
        }

    }


        public function blogCategory($slug,Request $request){
            Paginator::useBootstrap();
            $category=BlogCategory::where(['slug'=>$slug,'status'=>1])->first();
            if(!$category){
                return back();
            }

            $paginator=CustomPaginator::where('id',1)->first()->qty;
            $blogs=Blog::where(['blog_category_id'=>$category->id,'status'=>1])->paginate($paginator);
            $blogs=$blogs->appends($request->all());
            $banner_image=BannerImage::find(5);
            $seo_text=SeoText::find(6);
            $menus=Navigation::all();
            $websiteLang=ManageText::all();
            return view('user.blog.index',compact('blogs','banner_image','menus','seo_text','websiteLang'));
        }

        public function blogSearch(Request $request){
            Paginator::useBootstrap();
            $rules = [
                'search'=>'required',
            ];


            $this->validate($request, $rules);
            $paginator=CustomPaginator::where('id',1)->first()->qty;
            $blogs=Blog::where('title','LIKE','%'.$request->search.'%')->paginate($paginator);
            $blogs=$blogs->appends($request->all());
            $seo_text=SeoText::find(6);
            $banner_image=BannerImage::find(5);
            $menus=Navigation::all();
            $websiteLang=ManageText::all();
            return view('user.blog.index',compact('blogs','seo_text','banner_image','menus','websiteLang'));
        }

        public function blogComment(Request $request,$blogId){

            // project demo mode check
        if(env('PROJECT_MODE')==0){
            $notification=array(
                'messege'=>env('NOTIFY_TEXT'),
                'alert-type'=>'error'
            );

            return redirect()->back()->with($notification);
        }
        // end
            $valid_lang=ValidationText::all();
            $rules = [
                'name'=>'required',
                'email'=>'required|email',
                'comment'=>'required',
                'g-recaptcha-response'=>new Captcha()
            ];
            $customMessages = [
                'name.required' => $valid_lang->where('lang_key','name')->first()->custom_text,
                'email.required' => $valid_lang->where('lang_key','email')->first()->custom_text,
                'comment.required' => $valid_lang->where('lang_key','comment')->first()->custom_text,
            ];
            $this->validate($request, $rules, $customMessages);

            $comment=new BlogComment();
            $comment->blog_id=$blogId;
            $comment->name=$request->name;
            $comment->email=$request->email;
            $comment->comment=$request->comment;
            $comment->save();


            $notification=array(
                'messege'=>'Commented Successufully',
                'alert-type'=>'success'
            );

        return back()->with($notification);
    }

    public function faq(){
        $faqs=Faq::where('status',1)->get();
        $banner_image=BannerImage::find(19);
        $faq_image=BannerImage::find(20);

        $seo_text=SeoText::find(8);
        $menus=Navigation::all();

        return view('user.faq',compact('banner_image','faqs','faq_image','seo_text','menus'));

    }


    public function contactUs(){
        $contact=ContactInformation::first();
        $contactSetting=Setting::first();
        $seo_text=SeoText::find(7);
        $banner_image=BannerImage::find(6);
        $menus=Navigation::all();
        $websiteLang=ManageText::all();
        return view('user.contact-us',compact('contact','contactSetting','seo_text','banner_image','menus','websiteLang'));
    }
    public function contactUs1(){
        $contact=ContactInformation::first();
        $contactSetting=Setting::first();
        $seo_text=SeoText::find(7);
        $banner_image=BannerImage::find(6);
        $menus=Navigation::all();
        $websiteLang=ManageText::all();
        return view('user.contact-us1',compact('contact','contactSetting','seo_text','banner_image','menus','websiteLang'));
    }

    public function termsCondition(){
        $termsCondtion=ConditionPrivacy::first();
        $banner_image=BannerImage::find(9);
        $menus=Navigation::all();

        return view('user.terms-condition',compact('termsCondtion','banner_image','menus'));
    }



    public function privacyPolicy(){
        $termsCondtion=ConditionPrivacy::first();
        $banner_image=BannerImage::find(10);
        $menus=Navigation::all();
        return view('user.privacy-policy',compact('termsCondtion','banner_image','menus'));
    }



    // manage subsciber
    public function subscribeUs(Request $request){
        $valid_lang=ValidationText::all();
        $rules = [
            'email'=>'required|email',
        ];
        $customMessages = [
            'email.required' => $valid_lang->where('lang_key','email')->first()->custom_text
        ];
        $this->validate($request, $rules, $customMessages);


        $isSubsriber=Subscribe::where('email',$request->email)->count();
        if($isSubsriber ==0){
            $subscribe=Subscribe::create([
                'email'=>$request->email,
                'verify_token'=>Str::random(25)
            ]);

            MailHelper::setMailConfig();

            $template=EmailTemplate::where('id',4)->first();
            $message=$template->description;
            $subject=$template->subject;
            Mail::to($subscribe->email)->send(new SubscribeUsNotification($subscribe,$message,$subject));

            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','subscribe')->first()->custom_text;
            return response()->json(['success'=>$notification]);
        }else{
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','already_subscribe')->first()->custom_text;
            return response()->json(['error'=>$notification]);
        }

    }

    public function subscriptionVerify($token){
        $subscribe=Subscribe::where('verify_token',$token)->first();
        if($subscribe){
            $subscribe->status=1;
            $subscribe->verify_token=null;
            $subscribe->save();

            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','verified')->first()->custom_text;
            $notification=array('messege'=>$notification,'alert-type'=>'success');

            return redirect()->to('/')->with($notification);
        }else{
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','invalid_token')->first()->custom_text;
            $notification=array('messege'=>$notification,'alert-type'=>'error');

            return redirect()->to('/')->with($notification);
        }
    }


    public function customPage($slug){
        $page=CustomPage::where('slug',$slug)->first();
        if(!$page){
            return back();
        }
        $banner_image=BannerImage::find(17);
        $menus=Navigation::all();
        return view('user.custom-page',compact('page','banner_image','menus'));
    }


    public function agent(){
        Paginator::useBootstrap();
        $banner_image=BannerImage::find(21);
        $paginate_qty=CustomPaginator::where('id',3)->first()->qty;
        $agents=User::where('status',1)->orderBy('id','desc')->paginate($paginate_qty);
        $orders=Order::where(['status'=>1])->get();
        $default_profile_image=BannerImage::find(15);
        $seo_text=SeoText::find(5);
        $menus=Navigation::all();
        $websiteLang=ManageText::all();
        return view('user.agent.index',compact('banner_image','menus','agents','orders','default_profile_image','seo_text','websiteLang'));
    }

    public function agentDetails(Request $request){
        Paginator::useBootstrap();
        $user_type='';
        if(!$request->user_type){
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
            $notification=array('messege'=>$notification,'alert-type'=>'error');
            return redirect()->route('home')->with($notification);
        }else{
            $user_type=$request->user_type;
        }


        if($user_type ==1 || $user_type ==2){
            if($request->user_name){
                if($user_type==1){

                    $user=Admin::where(['status'=>1,'slug'=>$request->user_name])->first();
                    if(!$user){
                        $notify_lang=NotificationText::all();
                        $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
                        $notification=array('messege'=>$notification,'alert-type'=>'error');
                        return redirect()->route('home')->with($notification);
                    }

                    $paginate_qty=CustomPaginator::where('id',2)->first()->qty;
                    $banner_image=BannerImage::find(1);
                    $default_image=BannerImage::find(18);
                    $menus=Navigation::all();
                    $currency=Setting::first();
                    $setting=Setting::first();
                    $properties=Property::where(['status'=>1,'admin_id'=>$user->id])->paginate($paginate_qty);
                    $popluarProperties=Property::where('status',1)->orderBy('views','desc')->get();
                    $properties=$properties->appends($request->all());

                    $default_profile_image=BannerImage::find(15);
                    $websiteLang=ManageText::all();
                    return view('user.agent.show',compact('properties','banner_image','default_image','menus','currency','user','setting','user_type','popluarProperties','default_profile_image','websiteLang'));

                }else{
                    $user=User::where(['status'=>1,'slug'=>$request->user_name])->first();
                    if(!$user){
                        $notify_lang=NotificationText::all();
                        $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
                        $notification=array('messege'=>$notification,'alert-type'=>'error');
                        return redirect()->route('home')->with($notification);
                    }

                    $paginate_qty=CustomPaginator::where('id',2)->first()->qty;
                    $banner_image=BannerImage::find(18);
                    $default_image=BannerImage::find(15);
                    $menus=Navigation::all();
                    $currency=Setting::first();
                    $setting=Setting::first();
                    $properties=Property::where(['status'=>1,'user_id'=>$user->id])->paginate($paginate_qty);
                    $properties=$properties->appends($request->all());
                    $popluarProperties=Property::where('status',1)->orderBy('views','desc')->get();
                    $default_profile_image=BannerImage::find(15);
                    $websiteLang=ManageText::all();
                    return view('user.agent.show',compact('properties','banner_image','default_image','menus','currency','user','setting','user_type','popluarProperties','default_profile_image','websiteLang'));
                }
            }else{
                $notify_lang=NotificationText::all();
                $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
                $notification=array('messege'=>$notification,'alert-type'=>'error');
                return redirect()->route('home')->with($notification);
            }
        }else{
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
            $notification=array('messege'=>$notification,'alert-type'=>'error');
            return redirect()->route('home')->with($notification);
        }
    }



    public function pricingPlan(){
        $packages=Package::where('status',1)->orderBy('package_order','asc')->get();
        $seo_text=SeoText::find(4);
        $banner_image=BannerImage::find(3);
        $menus=Navigation::all();
        $currency=Setting::first();
        $websiteLang=ManageText::all();
        return view('user.price-plan',compact('packages','seo_text','banner_image','menus','currency','websiteLang'));
    }


    public function properties(Request $request){
        Paginator::useBootstrap();
        // cheack page type, page type means grid view or listing view
        $page_type='';
        if(!$request->page_type){
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
            $notification=array('messege'=>$notification,'alert-type'=>'error');
            return redirect()->route('home')->with($notification);
        }else{
            if($request->page_type=='list_view'){
                $page_type=$request->page_type;
            }else if($request->page_type=='grid_view'){
                $page_type=$request->page_type;
            }else{
                $notify_lang=NotificationText::all();
                $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
                $notification=array('messege'=>$notification,'alert-type'=>'error');
                return redirect()->route('home')->with($notification);
            }
        }
        // end page type


        $paginate_qty=CustomPaginator::where('id',2)->first()->qty;

        if($request->sorting_id){
            $id=$request->sorting_id;
            if($id==1){
                $properties=Property::where('status',1)->orderBy('id','desc')->paginate($paginate_qty);
            }else if($id==2){
                $properties=Property::where('status',1)->orderBy('views','desc')->paginate($paginate_qty);
            }else if($id==3){
                $properties=Property::where(['is_featured'=>1,'status'=>1])->orderBy('id','desc')->paginate($paginate_qty);
            }else if($id==4){
                $properties=Property::where(['top_property'=>1,'status'=>1])->orderBy('id','desc')->paginate($paginate_qty);
            }else if($id==5){
                $properties=Property::where(['status'=>1])->orderBy('id','desc')->paginate($paginate_qty);
            }else if($id==6){
                $properties=Property::where(['urgent_property'=>1,'status'=>1])->orderBy('id','desc')->paginate($paginate_qty);
            }else if($id==7){
                $properties=Property::where(['status'=>1])->orderBy('id','asc')->paginate($paginate_qty);
            }
        }else{
            $properties=Property::where('status',1)->orderBy('id','desc')->paginate($paginate_qty);
        }

        $properties=$properties->appends($request->all());

        $banner_image=BannerImage::find(1);
        $default_image=BannerImage::find(15);
        $menus=Navigation::all();
        $currency=Setting::first();
        $seo_text=SeoText::find(2);
        $propertyTypes=PropertyType::where('status',1)->orderBy('type','asc')->get();
        $cities=City::where('status',1)->orderBy('name','asc')->get();
        $aminities=Aminity::where('status',1)->orderBy('aminity','asc')->get();
        $websiteLang=ManageText::all();
        return view('user.property.index',compact('properties','banner_image','default_image','menus','currency','page_type','seo_text','propertyTypes','cities','aminities','websiteLang'));
    }


      public function downloadListingFile($file){
        $filepath= public_path() . "/uploads/custom-images/".$file;
        return response()->download($filepath);
    }

    public function propertDetails($slug){
        $property=Property::where(['status'=>1,'slug'=>$slug])->first();
        if($property){

            $isExpired=false;
            if($property->expired_date==null){
                $isExpired=false;
            }else if($property->expired_date >= date('Y-m-d')){
                $isExpired=false;
            }else{
                $isExpired=true;
            }
            if($isExpired){
                $notify_lang=NotificationText::all();
                $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
                $notification=array('messege'=>$notification,'alert-type'=>'error');
                return redirect()->back()->with($notification);
            }

            $property->views=$property->views +1;
            $property->save();
            $similarProperties=Property::where(['status'=>1,'property_type_id'=>$property->property_type_id])->where('id', '!=',$property->id)->get()->take(3);
            $banner_image=BannerImage::find(1);
            $default_image=BannerImage::find(15);
            $menus=Navigation::all();
            $currency=Setting::first();
            $setting=Setting::first();
            $websiteLang=ManageText::all();
            return view('user.property.show',compact('property','banner_image','default_image','menus','currency','setting','similarProperties','websiteLang'));
        }else{
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
            $notification=array('messege'=>$notification,'alert-type'=>'error');
            return redirect()->back()->with($notification);
        }
    }




    public function searchPropertyPage(Request $request){

        Paginator::useBootstrap();

        // check page type, page type means grid view or list view
        $page_type='';
        if(!$request->page_type){
            $notify_lang=NotificationText::all();
            $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
            $notification=array('messege'=>$notification,'alert-type'=>'error');
            return redirect()->route('home')->with($notification);
        }else{
            if($request->page_type=='list_view'){
                $page_type=$request->page_type;
            }else if($request->page_type=='grid_view'){
                $page_type=$request->page_type;
            }else{
                $notify_lang=NotificationText::all();
                $notification=$notify_lang->where('lang_key','something')->first()->custom_text;
                $notification=array('messege'=>$notification,'alert-type'=>'error');
                return redirect()->route('home')->with($notification);
            }
        }
        // end page type

        // check aminity
        $sortArry=[];
        if($request->aminity){
            foreach($request->aminity as $amnty){
                array_push($sortArry,(int)$amnty);
            }
        }else{
            $aminities=Aminity::where('status',1)->get();
            foreach($aminities as $aminity){
                array_push($sortArry,(int)$aminity->id);
            }
        }
        // end aminity

        // soriting data
        $paginate_qty=CustomPaginator::where('id',2)->first()->qty;
        // check order type
        $orderBy="desc";
        $orderByView=false;
        if($request->sorting_id){
            if($request->sorting_id==7){
                $orderBy="asc";
            }else if($request->sorting_id==1){
                $orderBy="desc";
            }else if($request->sorting_id==5){
                $orderBy="desc";
            }else if($request->sorting_id==2){
                $orderBy="asc";
                $orderByView=true;
            }
        }
        // end check order type
        // start query
        $propertyAminities=PropertyAminity::whereHas('property',function($query) use ($request){
            if($request->property_type != null){
                $query->where(['property_type_id'=>$request->property_type,'status'=>1]);
            }
            if($request->city_id != null){
                $query->where(['city_id'=>$request->city_id,'status'=>1]);
            }
            if($request->search != null){
                $query->where('title','LIKE','%'.$request->search.'%')->where('status',1);
            }

            if($request->purpose_type != null){
                $query->where(['property_purpose_id'=>$request->purpose_type,'status'=>1]);
            }

            if($request->sorting_id){
                if($request->sorting_id==3){
                    $query->where(['is_featured'=>1,'status'=>1]);
                }else if($request->sorting_id==6){
                    $query->where(['urgent_property'=>1,'status'=>1]);
                }elseif($request->sorting_id==4){
                    $query->where(['top_property'=>1,'status'=>1]);
                }
            }
            
            if ($request->minprice == null and $request->maxprice !=null ) {
                
                $query->where('price','<=',$request->maxprice);
                
            }
            
            else if ($request->minprice != null and $request->maxprice ==null) {
                
                 $query->where('price','>=',$request->minprice);
            }
            
              else if ($request->minprice != null and $request->maxprice !=null) {
                
                 $query->where([['price','<=',$request->maxprice],['price','>=',$request->minprice]]);
            }

            $query->where(['status'=>1]);
        })->whereIn('aminity_id',$sortArry)
        ->select('property_id')->groupBy('property_id')
        ->orderBy('id',$orderBy)
        ->paginate($paginate_qty);




        // end query, sorting

        $propertyAminities=$propertyAminities->appends($request->all());



        $aminities=Aminity::where('status',1)->orderBy('aminity','asc')->get();
        $banner_image=BannerImage::find(1);
        $default_image=BannerImage::find(15);
        $menus=Navigation::all();
        $currency=Setting::first();
        $seo_text=SeoText::find(2);
        $propertyTypes=PropertyType::where('status',1)->orderBy('type','asc')->get();
        $cities=City::where('status',1)->orderBy('name','asc')->get();
        $websiteLang=ManageText::all();
        return view('user.property.search',compact('propertyAminities','aminities','seo_text','banner_image','menus','page_type','currency','propertyTypes','cities','websiteLang'));
    }
    
    public function maintenance(){
        
        return view ('Maintenance.maintenance');
    }


}
