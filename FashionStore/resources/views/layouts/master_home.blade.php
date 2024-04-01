<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>
        @yield('title')
    </title>
    <meta name="description" content="Đến với mọi cửa hàng của Fashion Store, bạn đều được trải nghiệm và mua sắm những sản phẩm chất lượng cao, uy tín hàng đầu trên thị trường chăm sóc sức khỏe">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="HTMLCooker">

    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="shortcut icon" type="image" href="{{asset('/images/icons/logo-store.png')}}" />

    <!-- ================= Google Fonts ================== -->
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{asset('bower_components/font-awesome/css/font-awesome.min.css')}}">

    <!-- Cloud Zoom CSS -->
    <!-- <link rel="stylesheet" type="text/css" href="css/em_cloudzoom.css" media="all" /> -->

    <!-- Menu CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/menu.css')}}" media="all" />
    <!-- Mega Menu CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/megamenu.css')}}" media="all" />

    <!-- Widget CSS -->
    <!-- <link rel="stylesheet" type="text/css" href="css/widgets.css" media="all" /> -->

    <!-- Default CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/styles.css')}}" media="all" />
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/font-awesome.css')}}" media="all" />
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/owl.carousel.css')}}" media="all" />
    <!-- Responsive CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/responsive.css')}}" media="all" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/bootstrap.css')}}" media="all" />

    <!-- Ajax Cart CSS -->
    <!-- <link rel="stylesheet" type="text/css" href="css/em_ajaxcart.css" media="all" /> -->
    <!-- Blog Style CSS -->
    <!-- <link rel="stylesheet" type="text/css" href="css/blog-styles.css" media="all" /> -->
    <!-- Multi Deal Pro CSS -->
    <!-- <link rel="stylesheet" type="text/css" href="css/em_multidealpro.css" media="all" /> -->

    <!-- Product Labels CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/em_productlabels.css')}}" media="all" />

    <!-- Quick Shop CSS -->
    <!-- <link rel="stylesheet" type="text/css" href="css/em_quickshop.css" media="all" /> -->

    <!-- Fancybox CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/jquery.fancybox.css')}}" media="all" />

    <!-- Responsive Tab CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/responsive-tabs.css')}}" media="all" />
    <!-- Print CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/print.css')}}" media="print" />
    <!-- Fashion CSS -->
    <link rel='stylesheet' type='text/css' media='all' href="{{asset('home/css/style_fashion.css')}}" />
    <!-- Fashion CSS -->
    <link rel='stylesheet' type='text/css' media='all' href="{{asset('home/css/color.css')}}" />

    <!--Search CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('home/css/searching-v1.css')}}" media="all" />

    <link rel="stylesheet" type="text/css" href="{{asset('home/css/loader.css')}}">

    @yield('css')

    <!-- Jquery Js -->
    <script type="text/javascript" src="{{asset('home/js/jquery-3.2.1.min.js')}}"></script>
    <!-- Bootstrap Js -->
    <script type="text/javascript" src="{{asset('home/js/bootstrap.min.js')}}"></script>
    <!-- Lazy Load Js -->
    <script type="text/javascript" src="{{asset('home/js/jquery.lazyload.min.js')}}"></script>
    <!-- Owl Carousel Js -->
    <script type="text/javascript" src="{{asset('home/js/owl.carousel.js')}}"></script>
    <!-- Ios Orientation Change Js -->
    <script type="text/javascript" src="{{asset('home/js/ios-orientationchange-fix.js')}}"></script>
    <!-- Hover Intent Js -->
    <script type="text/javascript" src="{{asset('home/js/jquery.hoverIntent.js')}}"></script>
    <!-- Select UI Js -->
    <script type="text/javascript" src="{{asset('home/js/selectUl.js')}}"></script>
    <!-- Throttle Js -->
    <script type="text/javascript" src="{{asset('home/js/jquery.ba-throttle-debounce.js')}}"></script>
    <!-- EM Js -->
    <script type="text/javascript" src="{{asset('home/js/em0131.js')}}"></script>
    <!-- MegaMenu Js -->
    <script type="text/javascript" src="{{asset('home/js/megamenu.js')}}"></script>
    <!-- Responsive Tab Js -->
    <script type="text/javascript" src="{{asset('home/js/jquery.custom.responsiveTabs.js')}}"></script>
    <!-- Fancybox Js -->
    <script type="text/javascript" src="{{asset('home/js/jquery.fancybox.js')}}"></script>
    <!-- Custom Js -->
    <script type="text/javascript" src="{{asset('home/js/custom.js')}}"></script>

    @yield('js')

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-151736414-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-151736414-1');
    </script>
</head>

<body class="cms-index-index">
    <div class="wrapper ">
        <noscript>
            <div class="global-site-notice noscript">
                <div class="notice-inner">
                    <p> <strong>JavaScript dường như đã bị vô hiệu hóa trong trình duyệt của bạn.</strong>
                        <br /> Bạn phải bật JavaScript trong trình duyệt của mình để sử dụng chức năng của trang web này.</p>
                </div>
            </div>
        </noscript>
        <div class="page two-columns-left">

            <div class="em-wrapper-header">
                <div id="em-mheader" class="visible-xs container">
                    <div id="em-mheader-top" class="row" style="background : #fff; margin-top: -10px;">
                        <div class="em-logo col-xs-14" style="margin-left: -20px; margin-bottom: -35px;">
                            <a href="{{ url('/') }}" class="logo">
                                <img src="{{asset('/images/icons/logo-store-text.png')}}" />
                            </a>
                        </div>
                        <div class="em-logo col-xs-10" style="margin-right: 0px;">
                            <a href="tel:0123 456 789">
                                <img src="{{asset('/images/icons/call-2.gif')}}" alt="" style="width: 25px; height: 25px;">
                                <span style="font-weight:bold; font-size:14px;"><span style="color:#0000FF;">0123 456 789</span></span>
                            </a>
                        </div>
                    </div>
                    <div id="em-mheader-top" class="row">
                        <div id="em-mheader-logo" class="col-xs-4">
                            <div class="em-logo">
                                <a href="{{ url('/') }}" class="logo">
                                    <img src="{{asset('/images/icons/logo-store.png')}}" />
                                </a>
                            </div>
                        </div><!-- /#em-mheader-logo -->
                        <div class="col-xs-20">
                            <div class="em-top-search">
                                <div class="em-header-search-mobile">
                                    <form method="get" action="{{ url('/search') }}">
                                        <div class="form-search no_cate_search">
                                            <div class="text-search">
                                                <input id="search-mobile" type="text" name="parameter" value="" class="input-text" maxlength="128" />
                                                <button type="submit" title="Search" id="btn-search" class="button">
                                                </button>
                                                <div id="search_autocomplete_mobile" class="search-autocomplete"></div>
                                            </div>
                                        </div>
                                    </form>
                                </div><!-- /.em-header-search-mobile -->
                            </div><!-- /.em-top-search -->
                            <div class="em-top-cart">
                                <div class="em-wrapper-topcart-mobile em-no-quickshop">
                                    <div class="em-container-topcart">
                                        <div class="em-summary-topcart">
                                            <a id="em-amount-cart-link" class="em-amount-topcart" href="{{ url('/checkout/cart') }}">
                                                @if(Session::get('cart'))
                                                <?php $qty = 0; ?>
                                                @foreach(Session::get('cart') as $id => $item)
                                                <?php
                                                $qty += (int) $item['qty'];
                                                ?>
                                                @endforeach
                                                <span class="em-topcart-qty" id="cart_qty">{{$qty}}</span> </a>
                                            @else
                                            <span class="em-topcart-qty" id="cart_qty">0</span> </a>
                                            @endif
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- /.em-top-cart -->
                            <div id="em-mheader-wrapper-menu"> <span class="visible-xs fa fa-bars" id="em-mheader-menu-icon"></span>
                                <div id="em-mheader-menu-content" style="display: none;">
                                    <div class="em-wrapper-top">
                                        <div class="em-language-currency row">
                                            <div class="col-sm-24">

                                            </div>
                                        </div><!-- /.em-language-currency -->
                                        <div class="em-top-links row">
                                            <div class="">
                                                <ul class="top-header-link links">
                                                    @if(Auth::check())
                                                    <li class="first col-xs-8">
                                                        <a class="fa fa-user" href="{{ url('/my_account/'.Auth::user()->id) }}">
                                                            <span>{{Auth::user()->name}}</span>
                                                        </a>
                                                    </li>
                                                    <li class="col-xs-8">
                                                        <a class='fa fa-sign-out' href="{{ url('/logout') }}">
                                                            <span>Đăng xuất</span>
                                                        </a>
                                                    </li>
                                                    @else
                                                    <li class="first col-xs-8">
                                                        <a class="login-link fa fa-user" href="{{ url('/login') }}">
                                                            <span>Đăng nhập</span>
                                                        </a>
                                                    </li>
                                                    <li class="col-xs-8">
                                                        <a class='signup-link fa fa-user-plus' href="{{ url('/register') }}">
                                                            <span>Đăng kí</span>
                                                        </a>
                                                    </li>
                                                    @endif
                                                    <li class="last col-xs-8">
                                                        <a href="{{ url('checkout/cart') }}" class="checkout-link fa fa-shopping-cart">
                                                            <span>Giỏ hàng</span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div><!-- /.em-top-links -->
                                    </div><!-- /.em-wrapper-top -->
                                    <div class="row mobile-main-menu toggle-menu">
                                        <div class="col-sm-24">
                                            <div class="em-top-menu">
                                                <div class="em-menu-mobile">
                                                    <div class="megamenu-wrapper wrapper-7_5505">
                                                        <div class="em_nav" id="toogle_menu_7_5505">
                                                            <ul class="hnav em_menu_mobile">

                                                                <li class="menu-item-link menu-item-depth-0 dd-menu-link fa fa-list">
                                                                    <a class="em-menu-link" href="{{url('/')}}"> <span style="text-transform: uppercase;">Trang chủ</span> </a>
                                                                </li><!-- /.menu-item-link -->

                                                                <li class="menu-item-link menu-item-depth-0 dd-menu-link fa fa-user-md">
                                                                    <a class="em-menu-link" href="#"> <span style="text-transform: uppercase;">Dược sĩ tư vấn</span> </a>
                                                                </li><!-- /.menu-item-link -->

                                                                <li class="menu-item-link menu-item-depth-0 dd-menu-link fa fa-address-book-o">
                                                                    <a class="em-menu-link" href="{{ url('/ban-tin-suc-khoe') }}"> <span style="text-transform: uppercase;"> Sức khỏe cho bé</span> </a>
                                                                </li><!-- /.menu-item-link -->

                                                                <li class="menu-item-link menu-item-depth-0 dd-menu-link fa fa-medkit">
                                                                    <a class="em-menu-link" href="{{ url('/cua-hang/thuoc') }}"> <span style="text-transform: uppercase;"> Bổ sung vitamin & khoáng chất </span> </a>
                                                                </li><!-- /.menu-item-link -->

                                                                <li class="menu-item-link menu-item-depth-0 dd-menu-link fa fa-dropbox">
                                                                    <a class="em-menu-link" href="{{ url('/cua-hang/thuc-pham-chuc-nang') }}"> <span style="text-transform: uppercase;"> Nước tăng lực & giải khát </span> </a>
                                                                </li><!-- /.menu-item-link -->

                                                                <li class="menu-item-link menu-item-depth-0 dd-menu-link fa fa fa-shopping-cart">
                                                                    <a class="em-menu-link" href="{{ url('/cua-hang/hang-tieu-dung') }}"> <span style="text-transform: uppercase;"> Giàu chất xơ tiêu hóa </span> </a>
                                                                </li><!-- /.menu-item-link -->

                                                                <li class="menu-item-link menu-item-depth-0 dd-menu-link fa fa-ambulance">
                                                                    <a class="em-menu-link" href="{{ url('/cua-hang/thiet-bi-y-te') }}"> <span style="text-transform: uppercase;"> Chức năng đặc biệt </span> </a>
                                                                </li><!-- /.menu-item-link -->

                                                            </ul>
                                                        </div>
                                                    </div><!-- /.megamenu-wrapper -->
                                                </div>
                                            </div><!-- /.em-top-menu -->
                                        </div>
                                    </div><!-- /.mobile-main-menu -->

                                </div>
                            </div><!-- /.em-mheader-wrapper-menu -->
                        </div>
                    </div><!-- /#em-mheader-top -->
                </div><!-- /#em-mheader -->
                <div class="hidden-xs em-header-style08">
                    <div class="em-header-top">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-24">
                                    <div class="f-left" style="padding: 14px 20px;">
                                        <div class="f-left">
                                            <ul style="margin-bottom: 0px !important;">
                                                <li class="">
                                                    <a href="{{url('/')}}">
                                                        <img src="{{asset('/images/icons/logo-store-text.png')}}" alt="" style="height: 115px; width: 320px; margin-bottom: -90px; margin-top: -30px; padding-left: -8px; margin-left: -35px;">
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div id="hotline" class="f-left">
                                            <ul style="margin-bottom: 0px !important;">
                                                <li class="">
                                                    <a href="tel:0123 456 789">
                                                        <img src="{{asset('/images/icons/call-2.gif')}}" alt="" style="width: 25px; height: 25px;">
                                                        <span style="font-weight:bold; font-size:14px;"><span>Hotline:</span> <span style="color:#0000FF;">0123 456 789</span></span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div><!-- /.f-left -->

                                    <div class="">
                                        <div class="em-search f-right">
                                            <div class="em-top-search">
                                                <div class="em-wrapper-js-search em-search-style01">
                                                    <div class="em-wrapper-search em-no-category-search">
                                                        <a class="em-search-icon" title="Search" href="javascript:void(0);" id="link-search"><span>Search</span></a>
                                                        <div class="em-container-js-search" style="display: none;">
                                                            <form id="search_mini_form" method="get" action="{{ url('/search') }}">
                                                                <div class="form-search no_cate_search">
                                                                    <div class="text-search">
                                                                        <label for="search">Tìm kiếm</label>
                                                                        <input id="search" type="text" name="parameter" value="" class="input-text" maxlength="128" placeholder="Bạn tìm kiếm sản phẩm gì? ..." onkeyup="searching()" />
                                                                        <button type="submit" title="Search" id="btn-search" class="button"><span><span>Tìm kiếm</span></span>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </form><!-- /#search_mini_form -->
                                                            <div id="widget-rs-search" style="display : none;">

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div><!-- /.em-wrapper-js-search -->
                                            </div>
                                        </div><!-- /.em-search -->
                                        <div class="em-top-links">
                                            <div class="f-right"></div>
                                            @if(!Auth::check())
                                            <ul class="list-inline f-right">
                                                <li><a class="em-register-link" href="{{url('/register')}}" id="link-register">Đăng ký</a></li>
                                            </ul>
                                            <div id="em-login-link" class="account-link f-right em-non-login">
                                                <a href="{{url('/login')}}" class="link-account" id="link-login">Đăng nhập</a>
                                                <div class="em-account" id="em-account-login-form" style="display: none;">
                                                    <form method="post" id="top-login-form">
                                                        <div class="block-content">
                                                            <ul class="form-list">
                                                                <li>
                                                                    <div class="alert alert-warning mini-login-faile-msg" style="display:none">
                                                                        <ul></ul>
                                                                    </div>

                                                                    <div class="alert alert-danger mini-access-faile-msg" style="display:none">
                                                                        <ul></ul>
                                                                    </div>

                                                                    <div class="alert alert-danger mini-user-block-msg" style="display:none">
                                                                        <ul></ul>
                                                                    </div>

                                                                    <div class="alert alert-warning mini-user-incorrect-msg" style="display:none">
                                                                        <ul></ul>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                            <ul class="form-list">
                                                                <li>
                                                                    <label for="mini-login">Số điện thoại<em>*</em>
                                                                    </label>
                                                                    <input type="text" id="mini-phone" class="input-text" />
                                                                </li>
                                                                <li>
                                                                    <label for="mini-password">Mật khẩu<em>*</em>
                                                                    </label>
                                                                    <input type="password" id="mini-password" class="input-text" />
                                                                </li>
                                                            </ul>
                                                            <div class="action-forgot">
                                                                <div class="login_forgotpassword">
                                                                    <p><a href="{{ url('/forgot/password') }}">Quên mật khẩu?</a>
                                                                    </p>
                                                                    <p><span>Bạn không có tài khoản?</span><a class="create-account-link-wishlist" href="{{ url('/register') }}">Đăng ký ngay</a>
                                                                    </p>
                                                                </div>
                                                                <div class="actions">
                                                                    <button type="button" class="button mini-btn-login"><span><span>Đăng nhập</span></span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form><!-- /#top-login-form -->
                                                </div><!-- /#em-account-login-form -->
                                            </div><!-- /#em-login-link -->
                                            @else
                                            <div id="em-login-link" class="account-link f-right">
                                                <a href="javascript:void(0)" class="menu-account" id="username">
                                                    Chào {{Auth::user()->name}}
                                                </a>
                                                <div class="em-account" id="em-account-login-form" style="display: none;">
                                                    <div class="block-menu">
                                                        <ul class="form-menu">
                                                            <li style="margin-top : 5px;">
                                                                <a href="{{ url('/my_account/'.Auth::user()->id) }}" id="link-my-account"><i class="fa fa-child"></i> Thông tin cá nhân</a>
                                                            </li>
                                                            <li style="margin-top : 15px;">
                                                                <a href="{{ url('/transaction/history/'.Auth::user()->id) }}" id="link-transaction-history"><i class="fa fa-shopping-cart"></i> Lịch sử đặt hàng</a>
                                                            </li>
                                                            <li style="margin-top : 15px;">
                                                                <a href="{{ url('/wishlist') }}"><i class="fa fa-heart"></i> Sản phẩm yêu thích</a>
                                                            </li>
                                                            <li style="margin-top : 15px;">
                                                                <a href="{{ url('/change/password') }}" id="link-change-password"><i class="fa fa-recycle"></i> Đổi mật khẩu</a>
                                                            </li>
                                                            <li style="margin-top : 15px;">
                                                                <a href="{{ url('/logout') }}" id="link-logout"><i class="fa fa-sign-out"></i> Đăng xuất</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            @endif
                                        </div><!-- /.em-top-links -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.em-header-top -->
                    <div id="em-fixed-top"></div>
                    <div class="em-header-bottom em-fixed-top" style="background : #0000FF;">
                        <div class="container em-menu-fix-pos">
                            <div class="row">
                                <div class="col-sm-24">
                                    <div class="em-logo f-left" style="width : 85px; height : 75px; box-sizing : border-box;">
                                        <a href="/" class="logo">
                                            <img class="retina-img" src="{{asset('/images/icons/logo-store.png')}}" style="width : 100%;max-height : 75px;padding-top: 4px;" />
                                        </a>
                                    </div>
                                    <div class="em-logo-sticky f-left">
                                        <a href="/" class="logo">
                                            <img class="retina-img" src="{{asset('/images/icons/logo-store.png')}}" style="width : 55px; height : 52px;" />
                                        </a>
                                    </div>
                                    <div class="em-search em-search-sticky f-right">
                                        <div class="em-top-search">
                                            <div class="em-wrapper-js-search em-search-style01">
                                                <div class="em-wrapper-search">
                                                    <a class="em-search-icon" title="Search" href="javascript:void(0);" id="link-search">
                                                        <span>Search</span>
                                                    </a>
                                                    <div class="em-container-js-search" style="display: none;">
                                                        <form id="search_mini_form_fixed_top" method="get" action="{{ url('/search') }}">
                                                            <div class="form-search">
                                                                <label for="search">Search:</label>
                                                                <input id="search-fixed-top" type="text" name="parameter" value="" class="input-text" maxlength="128" placeholder="Bạn tìm kiếm sản phẩm gì?..." onkeyup="miniSearching()" />
                                                                <button type="submit" title="Search" id="btn-search" class="button">
                                                                    <span><span>Tìm kiếm</span></span>
                                                                </button>
                                                            </div>
                                                        </form>
                                                        <div id="mini-widget-rs-search" style="display : none;">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div><!-- /.em-wrapper-js-search -->
                                        </div>
                                    </div><!-- /.em-search -->
                                    <div class="em-top-cart-sticky em-top-cart f-right">
                                        <div class="em-wrapper-js-topcart em-wrapper-topcart em-no-quickshop">
                                            <div class="em-container-topcart">
                                                <div class="em-summary-topcart">
                                                    <a class="em-amount-js-topcart em-amount-topcart" title="Giỏ hàng" href="{{ url('/checkout/cart') }}">
                                                        @if(Session::get('cart'))
                                                        <?php $qty = 0; ?>
                                                        @foreach(Session::get('cart') as $id => $item)
                                                        <?php
                                                        $qty += (int) $item['qty'];
                                                        ?>
                                                        @endforeach
                                                        <span class="em-topcart-qty" id="cart_qty">{{$qty}}</span> </a>
                                                    @else
                                                    <span class="em-topcart-qty" id="cart_qty">0</span> </a>
                                                    @endif
                                                </div>
                                            </div>
                                        </div><!-- /.em-wrapper-js-topcart -->
                                    </div><!-- /.em-top-cart -->
                                    <div class="em-menu-hoz f-right">
                                        <div id="em-main-megamenu">
                                            <div class="em-menu">
                                                <div class="megamenu-wrapper wrapper-4_7164">
                                                    <div class="em_nav" id="toogle_menu_4_7164">
                                                        <ul class="hnav em_hoz_menu effect-menu">
                                                            <li class="menu-item-link menu-item-depth-0  menu-item-parent">
                                                                <a class="em-menu-link" href="{{url('/')}}" id="link-home"> <span>Trang chủ</span> </a>
                                                            </li><!-- /.menu-item-link -->

                                                            <li class="menu-item-link menu-item-depth-0  menu-item-parent">
                                                                <a class="em-menu-link" href="#"> <span>Dược sĩ tư vấn</span> </a>
                                                            </li><!-- /.menu-item-link -->

                                                            <li class="menu-item-link menu-item-depth-0 hidden-sm hidden-md menu-item-parent">
                                                                <a class="em-menu-link" href="{{ url('/ban-tin-suc-khoe') }}"> <span>Bản tin sức khỏe</span> </a>
                                                                <ul class="menu-container" style="dropdown-menu">
                                                                    <li class="menu-item-vbox menu-item-depth-1 col-menu menu_col5 grid_6 menu-item-parent" style="">
                                                                        <ul class="menu-container">
                                                                            <li class="menu-item-text menu-item-depth-2  col-md-24 ">
                                                                                <div class="em-line-01">
                                                                                    <div>
                                                                                        <ul class="menu-container" style="">
                                                                                            @if(isset($categories))
                                                                                            @foreach($categories as $value)
                                                                                            <li class="menu-item-link menu-item-depth-1 first">
                                                                                                <a class="em-menu-link" href="/chuyen-muc/{{$value->slug}}">
                                                                                                    <span>{{$value->name}}</span>
                                                                                                </a>
                                                                                            </li>
                                                                                            @endforeach
                                                                                            @endif </ul><!-- /.menu-container -->
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                    </li>
                                                                </ul><!-- /.menu-container -->
                                                            </li><!-- /.menu-item-link -->

                                                            <li class="menu-item-link menu-item-depth-0  menu-item-parent">
                                                                <a class="em-menu-link" href="{{ url('/gioi-thieu') }}"> <span> Giới thiệu </span> </a>
                                                            </li><!-- /.menu-item-link -->

                                                            <li class="menu-item-link menu-item-depth-0  menu-item-parent">
                                                                <a class="em-menu-link" href="{{ url('/lien-he') }}" id="link-contact"> <span> Liên hệ </span> </a>
                                                            </li><!-- /.menu-item-link -->

                                                        </ul><!-- /.hnav em_hoz_menu -->
                                                    </div><!-- /.em_nav -->
                                                </div><!-- /.megamenu-wrapper -->
                                            </div><!-- /.em-menu -->
                                        </div><!-- /#em-main-megamenu -->
                                    </div><!-- /.em-menu-hoz -->
                                </div>
                            </div>
                        </div><!-- /.container -->
                    </div><!-- /.em-header-bottom -->
                </div>
            </div><!-- /.em-wrapper-header -->

            <div class="em-wrapper-main">
                <div class="container container-main">
                    <div class="em-inner-main">
                        <div class="em-wrapper-area01">
                            @yield('introduction')
                        </div><!-- /.em-wrapper-area01 -->

                        <div class="em-main-container em-col2-left-layout">
                            @yield('home')
                        </div><!-- /.em-main-container -->

                        <div class="em-wrapper-area04">
                            @yield('interesting')
                        </div><!-- /.em-wrapper-area04 -->

                        <div class="em-wrapper-area05">
                            @yield('feature')
                        </div><!-- /.em-wrapper-area05 -->

                        <div class="em-wrapper-area06">
                            @yield('brand')
                        </div><!-- /.em-wrapper-area06 -->

                    </div><!-- /.em-inner-main -->
                </div><!-- /.container -->
            </div><!-- /.em-wrapper-main -->

            <div class="em-wrapper-footer">
                <div class="em-footer-style09">
                    <div class="em-footer-top">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-24">
                                    <div class="em-footer-info">
                                        <div class="row">

                                            <div class="col-sm-6 text-center" style="margin-bottom : 20px;">
                                                <div class="em-block-title">
                                                    <p class="h4 em-text-upercase"><span>Chủ sở hữu</span>
                                                    </p>
                                                </div>
                                                <p style="text-align : center; color: #ffffff;">
                                                    <a href="{{ url('/') }}">
                                                        Hộ kinh doanh <span>Cửa hàng sản phẩm</span>
                                                    </a>
                                                </p>
                                                <p style="text-align : center; color: #ffffff;">
                                                    Giấy phép ĐKKD số 01A8023039 cấp ngày 01 - 01 - 2023
                                                </p>
                                                <p style="text-align : center; color: #ffffff;">
                                                    Phụ trách CM : Trịnh Ngọc Dũng
                                                </p>
                                                <p style="text-align : center; color: #ffffff;">
                                                    Địa chỉ : 18 P. Viên, Đông Ngạc, Bắc Từ Liêm, Hà Nội
                                                </p>
                                            </div><!-- /.col-sm-4 -->

                                            <div class="col-sm-6 text-center" style="margin-bottom : 10px;">
                                                <div class="em-block-title" data-collapse-target="#collapse02">
                                                    <p class="h4 em-text-upercase"><span>Liên kết hữu ích</span>
                                                    </p>
                                                </div>
                                                <ul id="collapse02" class="em-links em-block-content block-info">
                                                    <li class="em-links-item">
                                                        <a href="#">
                                                            <span>Các câu hỏi thường gặp</span>
                                                        </a>
                                                    </li>
                                                    <li class="em-links-item">
                                                        <a href="#">
                                                            <span>Phương thức vận chuyển</span>
                                                        </a>
                                                    </li>
                                                    <li class="em-links-item">
                                                        <a href="#">
                                                            <span>Hình thức thanh toán</span>
                                                        </a>
                                                    </li>
                                                    <li class="em-links-item">
                                                        <a href="#">
                                                            <span>Chính sách đổi trả</span>
                                                        </a>
                                                    </li>
                                                    <li class="em-links-item">
                                                        <a href="#">
                                                            <span>Chính sách bảo mật</span>
                                                        </a>
                                                    </li>
                                                    <li class="em-links-item">
                                                        <a href="#">
                                                            <span>Liên hệ</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div><!-- /.col-sm-4 -->

                                            <div class="col-sm-6 text-center block em_block-tag-cloud" style="margin-bottom : 20px;">
                                                <div class="em-block-title">
                                                    <p class="h4 em-text-upercase"><span>Từ khóa sản phẩm</span>
                                                    </p>
                                                </div>
                                                <div class="block-content">
                                                    <ul>
                                                        @if(isset($group_promotions))
                                                        @foreach($group_promotions as $value)
                                                        <li class="keys"><a href="{{ url('/tu-khoa-san-pham/'.$value->slug) }}">{{$value->name}}</a>
                                                        </li>
                                                        @endforeach
                                                        @endif
                                                        <style>
                                                            .keys>a:hover {
                                                                color: #ff0099 !important;
                                                                background: #fff !important;
                                                                border-color: #fff !important;
                                                            }
                                                        </style>
                                                    </ul>
                                                </div>
                                            </div><!-- /.col-sm-4 -->

                                            <div class="col-sm-6 text-center">
                                                <div class="em-block-title">
                                                    <p class="h4 em-text-upercase"><span>Hỗ trợ khách hàng</span>
                                                    </p>
                                                </div>
                                                <ul id="collapse02" class="em-links em-block-content block-info">
                                                    <li class="em-links-item">
                                                        <a href="tel:0123 456 789">
                                                            <img src="{{asset('/images/icons/call-3.gif')}}" alt="" style="width: 40px; height: 40px;">
                                                            <span style="font-weight:bold; font-size:14px;"><span>Hotline:</span> <span>0123 456 789</span></span>
                                                        </a>
                                                    </li>
                                                    <!-- <style>
                                                        #hotline-footer:hover{
                                                            color: #0000FF !important;
                                                        }
                                                    </style> -->
                                                </ul>
                                                <div style="margin-top: 30px;">
                                                    <a target="_blank" href="http://online.gov.vn/Home/WebDetails/63444">
                                                        <img alt='Bộ công thương' src="{{asset('/images/icons/bo-cong-thuong.png')}}" style="width: 60%; height: auto;" />
                                                    </a>
                                                </div>
                                            </div><!-- /.col-sm-4 -->

                                        </div><!-- /.row -->
                                        <div class="em-footer-info-bottom">
                                            <div class="row">
                                                <div class="col-sm-15 first">
                                                    <div class="em-wrapper-newsletter">
                                                        <div class="em-block-title">
                                                            <p class="h4 em-text-upercase"><span>Đăng ký nhận bản tin</span>
                                                            </p>
                                                        </div>
                                                        <div id="collapse07" class="em-block-content em-newsletter">
                                                            <div class="em-newsletter-style05">
                                                                <div class="block block-subscribe">
                                                                    <div class="block-content">
                                                                        <div class="form-subscribe-content">
                                                                            <div class="input-box">
                                                                                <input type="text" name="" id="subscribe" class="input-text" placeholder="Nhập email của bạn ..." />
                                                                            </div>
                                                                            <div class="actions">
                                                                                <button type="button" class="button btn-subscribe">
                                                                                    <span><span>Đăng ký</span></span>
                                                                                </button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="block-content">
                                                                        <div class="error-message-subscribe" style="display:none; color:#fff; font-size:12px;">
                                                                            <ul></ul>
                                                                        </div>

                                                                        <div class="success-message-subscribe" style="display:none; color:#fff; font-size:12px;">
                                                                            <ul></ul>
                                                                        </div>

                                                                        <div class="unsuccess-message-subscribe" style="display:none; color:#fff; font-size:12px;">
                                                                            <ul></ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div><!-- /#collapse07 -->
                                                    </div>
                                                </div>
                                                <div class="col-sm-9 last">
                                                    <div class="em-wrapper-social f-right">
                                                        <div class="em-block-title" data-collapse-target="#collapse08">
                                                            <p class="h4 em-text-upercase">
                                                            </p>
                                                        </div>
                                                        <div id="collapse08" class="em-block-content">
                                                            <p class="em-social"><a class="em-social-icon em-facebook f-left" target="_blank" href="https://www.facebook.com/"><span class="fa fa-fw"></span></a> <a class="em-social-icon em-twitter f-left" href="#"><span class="fa fa-fw"></span></a> <a class="em-social-icon em-pinterest  f-left" href="#"><span class="fa fa-fw"></span></a> <a class="em-social-icon em-google f-left" href="#"><span class="fa fa-fw"></span></a> <a class="em-social-icon em-rss  f-left" href="#"><span class="fa fa-fw"></span></a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- /.em-footer-info-bottom -->
                                    </div><!-- /.em-footer-info -->
                                </div>
                            </div>
                        </div>
                    </div><!-- /.em-footer-top -->
                    <div class="em-footer-bottom">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-24">
                                    <div class="em-footer-address">
                                        <address class="f-left">&copy; Bản quyền thuộc về Fashion Store</address>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.em-footer-bottom -->
                </div><!-- /.em-footer-style09 -->
            </div><!-- /.em-wrapper-footer -->

            <p id="back-top" style="display: none;"><a title="Top" href="#top"></a></p>

        </div><!-- /.page -->
    </div><!-- /.wrapper -->

    <div class="se-pre-con"></div>

    <!-- Load Facebook SDK for JavaScript -->
    <div id="fb-root"></div>
    <script>
        window.fbAsyncInit = function() {
            FB.init({
                xfbml: true,
                version: 'v5.0'
            });
        };

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>

    <!-- Your customer chat code -->
    <div class="fb-customerchat" attribution=setup_tool page_id="112898516810168" theme_color="#0000FF" logged_in_greeting="Xin chào, Fashion Store có thể giúp gì cho bạn?" logged_out_greeting="Xin chào, Fashion Store có thể giúp gì cho bạn?">
    </div>
</body>

</html>

<script type="text/javascript" src="{{asset('js/fuse.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/searching-v1.js')}}"></script>

<script type="text/javascript">
    $('.mini-btn-login').click(function() {
        var form_data = new FormData();
        form_data.append("_token", '{{csrf_token()}}');
        form_data.append("phone", $('#mini-phone').val());
        form_data.append("password", $('#mini-password').val());

        $.ajax({
            type: 'post',
            url: '/login',
            data: form_data,
            dataType: 'json',
            contentType: false,
            processData: false,
            success: function(response) {
                if (response.is === 'login-failed') {
                    $(".mini-login-faile-msg").find("ul").html('');
                    $(".mini-login-faile-msg").css('display', 'block');
                    $(".mini-user-block-msg").css('display', 'none');
                    $(".mini-user-incorrect-msg").css('display', 'none');
                    $(".mini-access-faile-msg").css('display', 'none');

                    $.each(response.error, function(key, value) {
                        $(".mini-login-faile-msg").find("ul").append('<li>' + value + '</li>');
                    });
                }

                if (response.is === 'access-faile') {
                    $(".mini-access-faile-msg").find("ul").html('');
                    $(".mini-access-faile-msg").css('display', 'block');
                    $(".mini-user-block-msg").css('display', 'none');
                    $(".mini-user-incorrect-msg").css('display', 'none');
                    $(".mini-login-faile-msg").css('display', 'none');

                    $(".mini-access-faile-msg").find("ul").append('<li>' + response.unaccess + '</li>');
                }

                if (response.is === 'block') {
                    $(".mini-user-block-msg").find("ul").html('');
                    $(".mini-user-block-msg").css('display', 'block');
                    $(".mini-user-incorrect-msg").css('display', 'none');
                    $(".mini-login-faile-msg").css('display', 'none');
                    $(".mini-access-faile-msg").css('display', 'none');

                    $(".mini-user-block-msg").find("ul").append('<li>' + response.block + '</li>');
                }

                if (response.is === 'incorrect') {
                    $(".mini-user-incorrect-msg").find("ul").html('');
                    $(".mini-user-incorrect-msg").css('display', 'block');
                    $(".mini-user-block-msg").css('display', 'none');
                    $(".mini-login-faile-msg").css('display', 'none');
                    $(".mini-access-faile-msg").css('display', 'none');

                    $(".mini-user-incorrect-msg").find("ul").append('<li>' + response.incorrect + '</li>');
                }

                if (response.is === 'login-success') {
                    setTimeout(function() {
                        window.location.href = "/";
                    }, 200);
                }
            }
        });
    });
</script>

<script>
    $('.btn-subscribe').click(function() {
        var form_data = new FormData();
        form_data.append("_token", '{{csrf_token()}}');
        form_data.append("email", $('#subscribe').val());
        $.ajax({
            type: 'post',
            url: '/email/subscribe',
            data: form_data,
            dataType: 'json',
            contentType: false,
            processData: false,
            success: function(response) {
                if (response.is === 'failed') {
                    $(".error-message-subscribe").find("ul").html('');
                    $(".error-message-subscribe").css('display', 'block');
                    $(".success-message-subscribe").css('display', 'none');
                    $(".unsuccess-message-subscribe").css('display', 'none');

                    $.each(response.error, function(key, value) {
                        $(".error-message-subscribe").find("ul").append('<li><i class="fa fa-exclamation-triangle"></i> ' + value + '</li>');
                    });
                }
                if (response.is === 'success') {
                    $(".success-message-subscribe").find("ul").html('');
                    $(".success-message-subscribe").css('display', 'block');
                    $(".error-message-subscribe").css('display', 'none');
                    $(".unsuccess-message-subscribe").css('display', 'none');

                    $(".success-message-subscribe").find("ul").append('<li><i class="fa fa-check"></i> ' + response.complete + '</li>');
                }
                if (response.is === 'unsuccess') {
                    $(".unsuccess-message-subscribe").find("ul").html('');
                    $(".unsuccess-message-subscribe").css('display', 'block');
                    $(".error-message-subscribe").css('display', 'none');
                    $(".success-message-subscribe").css('display', 'none');

                    $(".unsuccess-message-subscribe").find("ul").append('<li><i class="fa fa-exclamation-triangle"></i> ' + response.uncomplete + '</li>');
                }
            }

        });
    })
</script>

<script>
    jQuery(document).ready(function() {
        jQuery('.se-pre-con').fadeOut("slow");
    });
</script>