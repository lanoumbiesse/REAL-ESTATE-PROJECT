<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Order;
use App\Mail\ExpiredOrderPreNotify;
use Mail;


use Carbon\Carbon;
use App\Helpers\MailHelper;

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

use Session;
use App\Mail\SubscribeUsNotification;
use Auth;
use App\CustomPaginator;
use App\Admin;
use App\User;

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

class Bayutfill extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'Bayutfill:daily';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Prendre les proprietes chez bayut';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {



      
       $xmlString = file_get_contents('https://bcrm_org.s3.amazonaws.com/xml/3470/1656479602_5_3470_52551.xml');
        $xmlObject = simplexml_load_string($xmlString,"SimpleXMLElement",LIBXML_NOCDATA);

        $json = json_encode($xmlObject);

       $phpArray = json_decode($json, true);
        
      // dd($phpArray['Property']);
      
  
     
     for ($i = 0 ; $i <= 19 ; $i++) {
         
  
     
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




    }

