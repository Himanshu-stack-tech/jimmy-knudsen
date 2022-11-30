<div class="modal fade ctm_modal_comman" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <!-- <h5 class="modal-title" id="exampleModalLabel">Modal title</h5> -->
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"></span>
                    <svg width="100%" height="100%" viewBox="0 0 4267 4267" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve" xmlns:serif="http://www.serif.com/" style="fill-rule:evenodd;clip-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:1.5;"><g><circle cx="2133.33" cy="2133.33" r="2083.33"/><g><path d="M1091.67,3175l2083.33,-2083.33" style="fill:none;stroke:#c8c8c8;stroke-width:145.83px;"/><path d="M1091.67,1091.67l2083.33,2083.33" style="fill:none;stroke:#c8c8c8;stroke-width:145.83px;"/></g></g></svg>
                </button>
            </div>
            <div class="modal-body">
                <div class="modal_heading">
                    <center><span class="logo-text">LOGIN ARTfora</span></center>
                </div>
                <div class="modal_form">
                    <form method="POST" action="{{ route('login') }}" id="loginForm">
                        @csrf

                        <span class="invalid-feedback hidden-error-main" role="alert" style="display: none;">
                                            <strong></strong>
                                        </span>

                        <?php if(@$_GET['ver'] == 1){ ?>
                        <p style="margin-bottom:5px">Your email address has been verified. Please login.</p>
                        <?php } ?>
                        <div class="form-group email_message">
                        <!-- <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label> -->
                            <span class="form_icon"><img class="btn-icon" style="margin-left: 3px;" width="23" height="23" src="/images/icon_envelope.svg" alt="Name"></span>
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required placeholder="EMAIL">

                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                            @enderror

                            <span class="invalid-feedback hidden-error-email" role="alert" style="display: none;">
                                                    <strong></strong>
                                                </span>
                        </div>

                        <div class="form-group">
                        <!-- <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label> -->
                            <span class="form_icon"><img class="btn-icon" style="margin-left: 3px;" width="23" height="23" src="/images/icon_key.svg" alt="Name"></span>
                            <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required placeholder="PASSWORD">
                            <i class="toggle-password fa fa-fw fa-eye-slash"></i>
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $message }}</strong>
                                                    </span>
                            @enderror

                            <span class="invalid-feedback hidden-error-password" role="alert" style="display: none;">
                                                    <strong></strong>
                                                </span>
                        </div>

                        <div class="form-group m-0">
                            <div class="form-check">
                                <input class="checkbox" type="checkbox" style="display: inline; float: left;" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                <label class="checkbox-label" for="remember">
                                    {{ __('Remember Me') }}
                                </label>
                            </div>
                        </div>

                        <div class="form-group m-0">
                            <div class="login_button_">
                                <button type="submit" class="btn btn-primary button_l">
                                    {{ __('Login') }}
                                </button>
                                {{-- @if (Route::has('password.request'))
                                    <p class="btn btn-link forgot_in">
                                        <!-- {{ __('Forgot Your Password?') }} -->
                                        If you have forgotten your password,<br>open the ARTfora app, log out and choose<br>"Forgot password" from the LOG IN screen.
                                    </p>
                                @endif --}}
                            </div>
                        </div>
                    </form>
                </div>
                Don't have account?<button class="register_click_button btn-link" data-toggle="modal" data-target="#register_modal">Register</button>
                <a href="/password/reset" class="forgot_a_tag">Forgot Password?</a>
            </div>
            <!-- <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div> -->
        </div>
    </div>
</div>
