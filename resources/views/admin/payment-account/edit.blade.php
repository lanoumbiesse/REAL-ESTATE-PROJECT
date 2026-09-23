@extends('layouts.admin.layout')
@section('title')
<title>{{ $websiteLang->where('lang_key','payment_account')->first()->custom_text }}</title>
@endsection
@section('admin-content')
    <!-- DataTales Example -->
    {{-- <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ $websiteLang->where('lang_key','payment_account')->first()->custom_text }}</h6>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.payment-account.update',$paymentAccount->id) }}" method="POST">
                        @csrf
                        @method('patch')
                        <div class="form-group">
                            <label for="">{{ $websiteLang->where('lang_key','paypal_account_mode')->first()->custom_text }}</label>
                            <select name="account_mode" id="" class="form-control">
                                <option {{ $paymentAccount->account_mode=='live' ? 'selected':'' }} value="live">{{ $websiteLang->where('lang_key','live')->first()->custom_text }}</option>
                                <option {{ $paymentAccount->account_mode=='sandbox' ? 'selected':'' }} value="sandbox">{{ $websiteLang->where('lang_key','sandbox')->first()->custom_text }}</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="paypal_client_id">{{ $websiteLang->where('lang_key','paypal_client_id')->first()->custom_text }}</label>
                            <textarea name="paypal_client_id" id="paypal_client_id" cols="30" rows="2" class="form-control">{{ $paymentAccount->paypal_client_id }}</textarea>

                        </div>
                        <div class="form-group">
                            <label for="paypal_secret">{{ $websiteLang->where('lang_key','paypal_secret_key')->first()->custom_text }}</label>
                            <textarea name="paypal_secret" id="paypal_secret" cols="30" rows="2" class="form-control" >{{ $paymentAccount->paypal_secret }}</textarea>

                        </div>
                        <div class="form-group">
                            <label for="stripe_key">{{ $websiteLang->where('lang_key','stripe_key')->first()->custom_text }}</label>
                            <textarea name="stripe_key" id="stripe_key" cols="30" rows="2" class="form-control">{{ $paymentAccount->stripe_key }}</textarea>

                        </div>
                        <div class="form-group">
                            <label for="stripe_secret">{{ $websiteLang->where('lang_key','stripe_secret')->first()->custom_text }}</label>
                            <textarea name="stripe_secret" id="stripe_secret" cols="30" rows="2" class="form-control">{{ $paymentAccount->stripe_secret }}</textarea>

                        </div>

                        <div class="form-group">
                            <label for="bank_account">{{ $websiteLang->where('lang_key','bank_details')->first()->custom_text }}</label>
                            <textarea name="bank_account" id="bank_account" cols="30" rows="5" class="form-control" >{{ $paymentAccount->bank_account }}</textarea>

                        </div>


                        <button type="submit" class="btn btn-success">{{ $websiteLang->where('lang_key','update')->first()->custom_text }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ $websiteLang->where('lang_key','razorpay_info')->first()->custom_text }}</h6>
                </div>
                <div class="card-body">
                    <form action="{{ route('admin.razorpay-update',$razorpay->id) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label for="">{{ $websiteLang->where('lang_key','razorpay_key')->first()->custom_text }}</label>
                            <input type="text" class="form-control" name="razorpay_key" value="{{ $razorpay->razorpay_key }}">

                        </div>
                        <div class="form-group">
                            <label for="">{{ $websiteLang->where('lang_key','razorpay_secret_key')->first()->custom_text }}</label>
                            <input type="text" class="form-control" name="razorpay_secret" value="{{ $razorpay->secret_key }}">
                        </div>

                        <div class="form-group">
                            <label for="">{{ $websiteLang->where('lang_key','name')->first()->custom_text }}</label>
                            <input type="text" class="form-control" name="name" value="{{ $razorpay->name }}">
                        </div>

                        <div class="form-group">
                            <label for="">{{ $websiteLang->where('lang_key','des')->first()->custom_text }}</label>
                            <input type="text" class="form-control" name="description" value="{{ $razorpay->description }}">
                        </div>

                        <div class="form-group">
                            <label for="">{{ $websiteLang->where('lang_key','exist_img')->first()->custom_text }}</label>
                            <div>
                                <img width="200px" src="{{ asset($razorpay->image) }}" alt="">
                            </div>

                        </div>
                        <div class="form-group">
                            <label for="">{{ $websiteLang->where('lang_key','img')->first()->custom_text }}</label>
                            <input type="file" class="form-control-file" name="image">
                        </div>


                        <div class="form-group">
                            <label for="">{{ $websiteLang->where('lang_key','theme_color')->first()->custom_text }}</label>
                            <br>
                            <input type="color" name="theme_color" value="{{ $razorpay->theme_color }}">
                        </div>

                        <button type="submit" class="btn btn-success">{{ $websiteLang->where('lang_key','update')->first()->custom_text }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
     --}}

     <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">{{ $websiteLang->where('lang_key','payment_account')->first()->custom_text }}</h6>
                </div>
                <div class="card-body">
                    <nav>
                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                          <a class="nav-link active" id="paypal-tab" data-toggle="tab" href="#paypal-account" role="tab" aria-controls="paypal-account" aria-selected="true">{{ $websiteLang->where('lang_key','paypal')->first()->custom_text }}</a>

                          <a class="nav-link" id="stripe-tab" data-toggle="tab" href="#stripe-account" role="tab" aria-controls="nav-profile" aria-selected="false">{{ $websiteLang->where('lang_key','stripe')->first()->custom_text }}</a>

                          <a class="nav-link" id="razorpay-tab" data-toggle="tab" href="#razorpay-account" role="tab" aria-controls="razorpay-account" aria-selected="false">{{ $websiteLang->where('lang_key','razorpay')->first()->custom_text }}</a>

                          <a class="nav-link" id="bank-tab" data-toggle="tab" href="#bank-account" role="tab" aria-controls="razorpay-account" aria-selected="false">{{ $websiteLang->where('lang_key','bank_payment')->first()->custom_text }}</a>

                        </div>
                      </nav>
                      <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="paypal-account" role="tabpanel" aria-labelledby="paypal-tab">
                            <div class="mt-4">
                                <form action="{{ route('admin.payment-account.update',$paymentAccount->id) }}" method="POST">
                                    @csrf
                                    @method('patch')


                                    <div class="form-group">
                                        <label for="">{{ $websiteLang->where('lang_key','paypal_account_mode')->first()->custom_text }}</label>
                                        <select name="account_mode" id="" class="form-control">
                                            <option {{ $paymentAccount->account_mode=='live' ? 'selected':'' }} value="live">{{ $websiteLang->where('lang_key','live')->first()->custom_text }}</option>
                                            <option {{ $paymentAccount->account_mode=='sandbox' ? 'selected':'' }} value="sandbox">{{ $websiteLang->where('lang_key','sandbox')->first()->custom_text }}</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="paypal_client_id">{{ $websiteLang->where('lang_key','paypal_client_id')->first()->custom_text }}</label>
                                        <textarea name="paypal_client_id" id="paypal_client_id" cols="30" rows="2" class="form-control">{{ $paymentAccount->paypal_client_id }}</textarea>

                                    </div>
                                    <div class="form-group">
                                        <label for="paypal_secret">{{ $websiteLang->where('lang_key','paypal_secret_key')->first()->custom_text }}</label>
                                        <textarea name="paypal_secret" id="paypal_secret" cols="30" rows="2" class="form-control" >{{ $paymentAccount->paypal_secret }}</textarea>

                                    </div>



                                    <div class="form-group">
                                        <label for="">{{ $websiteLang->where('lang_key','status')->first()->custom_text }}</label>
                                        <select name="paypal_status" id="" class="form-control">
                                            <option {{ $paymentAccount->paypal_status==1 ? 'selected':'' }} value="1">{{ $websiteLang->where('lang_key','active')->first()->custom_text }}</option>
                                            <option {{ $paymentAccount->paypal_status==0 ? 'selected':'' }} value="0">{{ $websiteLang->where('lang_key','inactive')->first()->custom_text }}</option>
                                        </select>
                                    </div>



                                    <button type="submit" class="btn btn-success">{{ $websiteLang->where('lang_key','update')->first()->custom_text }}</button>
                                </form>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="stripe-account" role="tabpanel" aria-labelledby="stripe-tab">
                            <div class="mt-3">
                                <form action="{{ route('admin.stripe-update',$paymentAccount->id) }}" method="POST">
                                    @csrf

                                    <div class="form-group">
                                        <label for="stripe_key">{{ $websiteLang->where('lang_key','stripe_key')->first()->custom_text }}</label>
                                        <textarea name="stripe_key" id="stripe_key" cols="30" rows="2" class="form-control">{{ $paymentAccount->stripe_key }}</textarea>

                                    </div>
                                    <div class="form-group">
                                        <label for="stripe_secret">{{ $websiteLang->where('lang_key','stripe_secret')->first()->custom_text }}</label>
                                        <textarea name="stripe_secret" id="stripe_secret" cols="30" rows="2" class="form-control">{{ $paymentAccount->stripe_secret }}</textarea>

                                    </div>

                                    <div class="form-group">
                                        <label for="">{{ $websiteLang->where('lang_key','status')->first()->custom_text }}</label>
                                        <select name="stripe_status" id="" class="form-control">
                                            <option {{ $paymentAccount->stripe_status==1 ? 'selected':'' }} value="1">{{ $websiteLang->where('lang_key','active')->first()->custom_text }}</option>
                                            <option {{ $paymentAccount->stripe_status==0 ? 'selected':'' }} value="0">{{ $websiteLang->where('lang_key','inactive')->first()->custom_text }}</option>
                                        </select>
                                    </div>

                                    <button type="submit" class="btn btn-success">{{ $websiteLang->where('lang_key','update')->first()->custom_text }}</button>
                                </form>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="razorpay-account" role="tabpanel" aria-labelledby="razorpay-tab">
                            <div class="mt-3">
                                <form action="{{ route('admin.razorpay-update',$razorpay->id) }}" method="POST" enctype="multipart/form-data">
                                    @csrf

                                    <div class="form-group">
                                        <label for="">{{ $websiteLang->where('lang_key','razorpay_key')->first()->custom_text }}</label>
                                        <input type="text" class="form-control" name="razorpay_key" value="{{ $razorpay->razorpay_key }}">

                                    </div>
                                    <div class="form-group">
                                        <label for="">{{ $websiteLang->where('lang_key','razorpay_secret_key')->first()->custom_text }}</label>
                                        <input type="text" class="form-control" name="razorpay_secret" value="{{ $razorpay->secret_key }}">
                                    </div>

                                    <div class="form-group">
                                        <label for="">{{ $websiteLang->where('lang_key','name')->first()->custom_text }}</label>
                                        <input type="text" class="form-control" name="name" value="{{ $razorpay->name }}">
                                    </div>

                                    <div class="form-group">
                                        <label for="">{{ $websiteLang->where('lang_key','des')->first()->custom_text }}</label>
                                        <input type="text" class="form-control" name="description" value="{{ $razorpay->description }}">
                                    </div>

                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label for="">{{ $websiteLang->where('lang_key','status')->first()->custom_text }}</label>
                                                <select name="razorpay_status" id="" class="form-control">
                                                    <option {{ $razorpay->razorpay_status==1 ? 'selected':'' }} value="1">{{ $websiteLang->where('lang_key','active')->first()->custom_text }}</option>
                                                    <option {{ $razorpay->razorpay_status==0 ? 'selected':'' }} value="0">{{ $websiteLang->where('lang_key','inactive')->first()->custom_text }}</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label for="">{{ $websiteLang->where('lang_key','active_currency')->first()->custom_text }} ({{ $websiteLang->where('lang_key','per_active_currency')->first()->custom_text }})</label>
                                                <input type="text" class="form-control" value="{{ $razorpay->currency_rate }}" name="currency_rate">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="">{{ $websiteLang->where('lang_key','exist_img')->first()->custom_text }}</label>
                                        <div>
                                            <img width="200px" src="{{ asset($razorpay->image) }}" alt="">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="">{{ $websiteLang->where('lang_key','img')->first()->custom_text }}</label>
                                        <input type="file" class="form-control-file" name="image">
                                    </div>

                                    <div class="form-group">
                                        <label for="">{{ $websiteLang->where('lang_key','theme_color')->first()->custom_text }}</label>
                                        <br>
                                        <input type="color" name="theme_color" value="{{ $razorpay->theme_color }}">
                                    </div>

                                    <button type="submit" class="btn btn-success">{{ $websiteLang->where('lang_key','update')->first()->custom_text }}</button>
                                </form>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="bank-account" role="tabpanel" aria-labelledby="bank-tab">
                            <div class="mt-3">
                                <form action="{{ route('admin.bank-update',$paymentAccount->id) }}" method="POST">
                                    @csrf
                                    <div class="form-group">
                                        <label for="bank_account">{{ $websiteLang->where('lang_key','bank_details')->first()->custom_text }}</label>
                                        <textarea name="bank_account" id="bank_account" cols="30" rows="5" class="form-control" >{{ $paymentAccount->bank_account }}</textarea>

                                    </div>

                                    <div class="form-group">
                                        <label for="">{{ $websiteLang->where('lang_key','status')->first()->custom_text }}</label>
                                        <select name="bank_status" id="" class="form-control">
                                            <option {{ $paymentAccount->bank_status==1 ? 'selected':'' }} value="1">{{ $websiteLang->where('lang_key','active')->first()->custom_text }}</option>
                                            <option {{ $paymentAccount->bank_status==0 ? 'selected':'' }} value="0">{{ $websiteLang->where('lang_key','inactive')->first()->custom_text }}</option>
                                        </select>
                                    </div>

                                    <button type="submit" class="btn btn-success">{{ $websiteLang->where('lang_key','update')->first()->custom_text }}</button>
                                </form>
                            </div>
                        </div>

                      </div>
                </div>
            </div>
        </div>
    </div>


@endsection
