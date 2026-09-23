
@extends('layouts.user.layout')
@section('title')
<title>{{ $seo_text->title }}</title>
@endsection
@section('meta')
    <meta name="description" content="{{ $seo_text->meta_description }}">
@endsection


    @section('user-content')
    <!--============================
              BREADCRUMB PART START
        ==============================-->
        <section id="wsus__breadcrumb" style="background-image:url({{ url($banner_image->image) }})">
            <div class="wsus_bread_overlay">
                <div class="container">
                    <div class="row">
                        <div class="col-12 text-center">
                            <h4>{{ $menus->where('id',8)->first()->navbar }}</h4>
                            <nav style="--bs-breadcrumb-divider: '-';" aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{ route('home') }}">{{ $menus->where('id',1)->first()->navbar }}</a></li>

                                    <li class="breadcrumb-item"><a>{{ $menus->where('id',8)->first()->navbar }}</a></li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--============================
              BREADCRUMB PART END
        ==============================-->




        <!--============================
              CONTACT PART START
        ==============================-->
        <section id="wsus__contact">
            <div class="container">
               
               
                    <div class="">
                        <form method="POST" action="{{ route('contact.message1') }}">
                            @csrf
                            
                                <div class="col-12">
                                    <h4>{{ $websiteLang->where('lang_key','contact_us')->first()->custom_text }}</h4>
                                </div>
                                
                                
                              
                                <div class="">
                                    <div class="wsus__contact_form">
                                        <input type="text" placeholder="Your Phone number" name="phone" required>
                                    </div>
                                    
                                    <div class="wsus__contact_form">
                                        <input type="email" placeholder="Your email" name="email" required>
                                    </div>
                                    
                                    <div class="wsus__contact_form">
                                        <input type="text"  placeholder="Number of bedrooms" name="bedroom">
                                    </div>
                                    
                                </div>

                              

                              

                          

                            <button class="common_btn_2">{{ $websiteLang->where('lang_key','send_msg')->first()->custom_text }}</button>
                        </form>
                    </div>
                    <div class="col-12">
                        <div class="wsus__maps">
                            {!! $contact->map_embed_code !!}
                        </div>
                    </div>
                
            </div>
        </section>
        <!--============================
              CONTACT PART END
        ==============================-->

    @endsection
