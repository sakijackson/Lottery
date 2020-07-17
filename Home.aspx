﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <meta charset="utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <meta name="description" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="manifest" href="site.webmanifest"/>
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico"/>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="assets/css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="assets/css/slicknav.css"/>
    <link rel="stylesheet" href="assets/css/flaticon.css"/>
    <link rel="stylesheet" href="assets/css/gijgo.css"/>
	<link rel="stylesheet" href="assets/css/animate.min.css"/>
	<link rel="stylesheet" href="assets/css/magnific-popup.css"/>
	<link rel="stylesheet" href="assets/css/fontawesome-all.min.css"/>
	<link rel="stylesheet" href="assets/css/themify-icons.css"/>
	<link rel="stylesheet" href="assets/css/slick.css"/>
	<link rel="stylesheet" href="assets/css/nice-select.css"/>
	<link rel="stylesheet" href="assets/css/style.css"/> 
     <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script>                 
        //  function UpdateTime(time)
        //  {              var timerdate = time;
        //      $("#countdown").countdown(timerdate, function (event) {                  
        //          $(this).html(event.strftime("<div class='cd-item'><span>%D</span><p>Days</p> </div>" + "<div class='cd-item'><span>%H</span><p>Hrs</p> </div>" + "<div class='cd-item'><span>%M</span><p>Min</p> </div>" + "<div class='cd-item'><span>%S</span><p>Sec</p> </div>"));
        //          });               
             
        //}
        $(document).ready(function () {

          //  window.menubar.visible = false;
           // window.toolbar.visible = false;
            $("#Counter").Hide();
          
        });
    </script>
    <title>Home</title>         

</head>
<body >
         <form runat="server">

        <header>
          <div class="header-area">
        <div class="main-header header-sticky">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <!-- Logo -->
                    <div class="col-xl-2 col-lg-2 col-md-1">
                        <div class="logo" style="font-size:30px" id="d">
                            Megalot
                            <%--<a href="index.html"><img src="assets/img/logo/logo.png" alt=""></a>--%>
                        </div>
                    </div>
                    <div class="col-xl-10 col-lg-10 col-md-10">
                        <div class="menu-main d-flex align-items-center justify-content-end">
                            <!-- Main-menu -->
                            <div class="main-menu f-right d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a href="Home.aspx">Home</a></li>
                                        <li><a href="about.html">About</a></li>
                                        <li><a href="spakers.html">Spakers</a></li>
                                        <li><a href="schedule.html">Schedule</a></li>
                                       <%-- <li><a href="blog.html">blog</a>
                                            <ul class="submenu">
                                                <li><a href="blog.html">blog</a></li>
                                                <li><a href="blog_details.html">blog details</a></li>
                                                <li><a href="elements.html">element</a></li>
                                            </ul>
                                        </li>--%>
                                        <li><a href="contact.html">Contact</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="header-right-btn f-right d-none d-lg-block ml-30">
                                <a href="Login.aspx" class="btn header-btn">Login</a>
                            </div>
                        </div>
                    </div>   
                    <!-- Mobile Menu -->
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
     </header>
    <main>
         <div class="slider-area position-relative">
        <div class="slider-active">
            <!-- Single Slider -->
            <%--<div class="single-slider slider-height d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8 col-lg-8 col-md-9 col-sm-10">
                            <div class="hero__caption">
                                <span data-animation="fadeInLeft" data-delay=".1s">Committed to success</span>
                                <h1 data-animation="fadeInLeft" data-delay=".5s">Digital Conference For Designers</h1>
                                <!-- Hero-btn -->
                               <%-- <div class="slider-btns">
                                    <a data-animation="fadeInLeft" data-delay="1.0s" href="industries.html" class="btn hero-btn">Download</a>
                                    <a data-animation="fadeInRight" data-delay="1.0s" class="popup-video video-btn"  href="https://www.youtube.com/watch?v=up68UAfH0d0">
                                        <i class="fas fa-play"></i></a>
                                    <p class="video-cap d-none d-sm-blcok" data-animation="fadeInRight" data-delay="1.0s">Story Vidoe<br> Watch</p>
                                </div>--%>
                <%--            </div>
                        </div>
                    </div>
                </div>          
            </div>--%>
            --%><!-- Single Slider -->
            <div class="single-slider slider-height d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8 col-lg-8 col-md-9 col-sm-10">
                            <div class="hero__caption">
                                <span data-animation="fadeInLeft" data-delay=".1s">Committed to success</span>
                                <h1 data-animation="fadeInLeft" data-delay=".5s">Time To Next Draw</h1>
                                <!-- Hero-btn -->
                                <div class="slider-btns">
                                    <a data-animation="fadeInLeft" data-delay="1.0s" href="#" class="btn hero-btn">Buy</a>
                                    <%--<a data-animation="fadeInRight" data-delay="1.0s" class="popup-video video-btn"  href="https://www.youtube.com/watch?v=up68UAfH0d0">
                                        <i class="fas fa-play"></i></a>--%>
                                    <p class="video-cap d-none d-sm-blcok" data-animation="fadeInRight" data-delay="1.0s">Story Vidoe<br> Watch</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>          
            </div>
        </div>
        <!-- Counter Section Begin -->
        <%--<div id="counter" class="counter-section d-sm-block">--%>
              <div id="Counter" class="counter-section d-none d-sm-block">
            <div class="cd-timer" id="countdown" >
                <div class="cd-item">
                    <span>96</span>
                    <p>Days</p>
                </div>
                <div class="cd-item">
                    <span>15</span>
                    <p>Hrs</p>
                </div>
                <div class="cd-item">
                    <span>07</span>
                    <p>Min</p>
                </div>
                <div class="cd-item">
                    <span>02</span>
                    <p>Sec</p>
                </div>
            </div>
        </div>
        <!-- Counter Section End -->
    </div>
    <!-- slider Area End-->
    <!--? About Law Start-->
    <!-- About Law End-->
    <!--? Brand Area Start -->
 
    <!-- Brand Area End -->  
    <!--? accordion -->
    <section class="accordion fix section-padding30">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-5 col-lg-6 col-md-6">
                    <!-- Section Tittle -->
                    <div class="section-tittle text-center mb-80">
                        <h2>Event Schedule</h2>
                        <p>There arge many variations ohf passages of sorem gp ilable, but the majority have ssorem gp iluffe.</p>
                    </div> 
                </div>
            </div>
            <div class="row ">
               <div class="col-lg-11">
                    <div class="properties__button mb-40">
                        <!--Nav Button  -->
                        <nav>                                                                         
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Day - 01</a>
                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false"> Day - 02</a>
                                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false"> Day - 03 </a>
                                <a class="nav-item nav-link" id="nav-dinner-tab" data-toggle="tab" href="#nav-dinner" role="tab" aria-controls="nav-dinner" aria-selected="false"> Day - 04 </a>
                            </div>
                        </nav>
                        <!--End Nav Button  -->
                    </div>
               </div>
            </div>
        </div>
        <div class="container">
            <!-- Nav Card -->
            <div class="tab-content" id="nav-tabContent">
                <!-- card one -->
                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                   <div class="row">
                        <div class="col-lg-11">
                            <div class="accordion-wrapper">
                                <div class="accordion" id="accordionExample">
                                    <!-- single-one -->
                                    <div class="card">
                                        <div class="card-header" id="headingTwo">
                                            <h2 class="mb-0">
                                                <a href="#" class="btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                    <span>8:30 AM - 9:30 AM</span>
                                                    <p>Snackes</p>
                                                </a> 
                                            </h2>
                                        </div>
                                        <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                            <div class="card-body">
                                                There arge many variations ohf passages of sorem gpsum ilable, but the majority have suffered alteration in some form, by ected humour, or randomised words whi.rere arge many variations ohf passages of sorem gpsum ilable.
                                            </div>
                                        </div>
                                    </div>
                                    <!-- single-two -->
                                    <div class="card">
                                        <div class="card-header" id="headingOne">
                                            <h2 class="mb-0">
                                                <a href="#" class="btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    <span>8:30 AM - 9:30 AM</span>
                                                    <p>Opening conference</p>
                                                </a>
                                            </h2>
                                        </div>
                                        <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                            <div class="card-body">
                                                There arge many variations ohf passages of sorem gpsum ilable, but the majority have suffered alteration in some form, by ected humour, or randomised words whi.rere arge many variations ohf passages of sorem gpsum ilable.
                                            </div>
                                        </div>
                                    </div>
                                    <!-- single-three -->
                                    <div class="card">
                                        <div class="card-header" id="headingThree">
                                            <h2 class="mb-0">
                                                <a href="#" class="btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                    <span>8:30 AM - 9:30 AM</span>
                                                    <p>Conference ending</p>
                                                </a>
                                            </h2>
                                        </div>
                                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                            <div class="card-body">
                                                There arge many variations ohf passages of sorem gpsum ilable, but the majority have suffered alteration in some form, by ected humour, or randomised words whi.rere arge many variations ohf passages of sorem gpsum ilable.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                   </div>
                </div>
                <!-- Card two -->
                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                    <div class="row">
                        <div class="col-lg-11">
                            <div class="accordion-wrapper">
                                <div class="accordion" id="accordionExample">
                                    <!-- single-one -->
                                    <div class="card">
                                        <div class="card-header" id="headingTwo">
                                            <h2 class="mb-0">
                                                <a href="#" class="btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo2" aria-expanded="false" aria-controls="collapseTwo2">
                                                    <span>8:30 AM - 9:30 AM</span>
                                                    <p>Snackes</p>
                                                </a> 
                                            </h2>
                                        </div>
                                        <div id="collapseTwo2" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                            <div class="card-body">
                                                There arge many variations ohf passages of sorem gpsum ilable, but the majority have suffered alteration in some form, by ected humour, or randomised words whi.rere arge many variations ohf passages of sorem gpsum ilable.
                                            </div>
                                        </div>
                                    </div>
                                    <!-- single-two -->
                                    <div class="card">
                                        <div class="card-header" id="headingOne">
                                            <h2 class="mb-0">
                                                <a href="#" class="btn-link" data-toggle="collapse" data-target="#collapseOne1" aria-expanded="true" aria-controls="collapseOne1">
                                                    <span>8:30 AM - 9:30 AM</span>
                                                    <p>Opening conference</p>
                                                </a>
                                            </h2>
                                        </div>
                                        <div id="collapseOne1" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                            <div class="card-body">
                                                There arge many variations ohf passages of sorem gpsum ilable, but the majority have suffered alteration in some form, by ected humour, or randomised words whi.rere arge many variations ohf passages of sorem gpsum ilable.
                                            </div>
                                        </div>
                                    </div>
                                    <!-- single-three -->
                                    <div class="card">
                                        <div class="card-header" id="headingThree">
                                            <h2 class="mb-0">
                                                <a href="#" class="btn-link collapsed" data-toggle="collapse" data-target="#collapseThree3" aria-expanded="false" aria-controls="collapseThree3">
                                                    <span>8:30 AM - 9:30 AM</span>
                                                    <p>Conference ending</p>
                                                </a>
                                            </h2>
                                        </div>
                                        <div id="collapseThree3" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                            <div class="card-body">
                                                There arge many variations ohf passages of sorem gpsum ilable, but the majority have suffered alteration in some form, by ected humour, or randomised words whi.rere arge many variations ohf passages of sorem gpsum ilable.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Card three -->
                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                    <div class="row">
                            <div class="col-lg-11">
                                <div class="accordion-wrapper">
                                    <div class="accordion" id="accordionExample">
                                        <!-- single-one -->
                                        <div class="card">
                                            <div class="card-header" id="headingTwo">
                                                <h2 class="mb-0">
                                                    <a href="#" class="btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo01" aria-expanded="false" aria-controls="collapseTwo01">
                                                        <span>8:30 AM - 9:30 AM</span>
                                                        <p>Snackes</p>
                                                    </a> 
                                                </h2>
                                            </div>
                                            <div id="collapseTwo01" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    There arge many variations ohf passages of sorem gpsum ilable, but the majority have suffered alteration in some form, by ected humour, or randomised words whi.rere arge many variations ohf passages of sorem gpsum ilable.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- single-two -->
                                        <div class="card">
                                            <div class="card-header" id="headingOne">
                                                <h2 class="mb-0">
                                                    <a href="#" class="btn-link" data-toggle="collapse" data-target="#collapseOne02" aria-expanded="true" aria-controls="collapseOne02">
                                                        <span>8:30 AM - 9:30 AM</span>
                                                        <p>Opening conference</p>
                                                    </a>
                                                </h2>
                                            </div>
                                            <div id="collapseOne02" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    There arge many variations ohf passages of sorem gpsum ilable, but the majority have suffered alteration in some form, by ected humour, or randomised words whi.rere arge many variations ohf passages of sorem gpsum ilable.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- single-three -->
                                        <div class="card">
                                            <div class="card-header" id="headingThree">
                                                <h2 class="mb-0">
                                                    <a href="#" class="btn-link collapsed" data-toggle="collapse" data-target="#collapseThree03" aria-expanded="false" aria-controls="collapseThree03">
                                                        <span>8:30 AM - 9:30 AM</span>
                                                        <p>Conference ending</p>
                                                    </a>
                                                </h2>
                                            </div>
                                            <div id="collapseThree03" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    There arge many variations ohf passages of sorem gpsum ilable, but the majority have suffered alteration in some form, by ected humour, or randomised words whi.rere arge many variations ohf passages of sorem gpsum ilable.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
                <!-- Card Four -->
                <div class="tab-pane fade" id="nav-dinner" role="tabpanel" aria-labelledby="nav-dinner">
                    <div class="row">
                            <div class="col-lg-11">
                                <div class="accordion-wrapper">
                                    <div class="accordion" id="accordionExample">
                                        <!-- single-one -->
                                        <div class="card">
                                            <div class="card-header" id="headingTwo">
                                                <h2 class="mb-0">
                                                    <a href="#" class="btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo10" aria-expanded="false" aria-controls="collapseTwo10">
                                                        <span>8:30 AM - 9:30 AM</span>
                                                        <p>Snackes</p>
                                                    </a> 
                                                </h2>
                                            </div>
                                            <div id="collapseTwo10" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    There arge many variations ohf passages of sorem gpsum ilable, but the majority have suffered alteration in some form, by ected humour, or randomised words whi.rere arge many variations ohf passages of sorem gpsum ilable.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- single-two -->
                                        <div class="card">
                                            <div class="card-header" id="headingOne">
                                                <h2 class="mb-0">
                                                    <a href="#" class="btn-link" data-toggle="collapse" data-target="#collapseOne20" aria-expanded="true" aria-controls="collapseOne20">
                                                        <span>8:30 AM - 9:30 AM</span>
                                                        <p>Opening conference</p>
                                                    </a>
                                                </h2>
                                            </div>
                                            <div id="collapseOne20" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    There arge many variations ohf passages of sorem gpsum ilable, but the majority have suffered alteration in some form, by ected humour, or randomised words whi.rere arge many variations ohf passages of sorem gpsum ilable.
                                                </div>
                                            </div>
                                        </div>
                                        <!-- single-three -->
                                        <div class="card">
                                            <div class="card-header" id="headingThree">
                                                <h2 class="mb-0">
                                                    <a href="#" class="btn-link collapsed" data-toggle="collapse" data-target="#collapseThree30" aria-expanded="false" aria-controls="collapseThree30">
                                                        <span>8:30 AM - 9:30 AM</span>
                                                        <p>Conference ending</p>
                                                    </a>
                                                </h2>
                                            </div>
                                            <div id="collapseThree30" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    There arge many variations ohf passages of sorem gpsum ilable, but the majority have suffered alteration in some form, by ected humour, or randomised words whi.rere arge many variations ohf passages of sorem gpsum ilable.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
            <!-- End Nav Card -->
        </div>
    </section>
    <!-- accordion End -->
    <!--? gallery Products Start -->
   
   
    <!-- gallery Products End -->
    <!--? Pricing Card Start -->
    <section class="pricing-card-area section-padding2">
        <div class="container">
            <!-- Section Tittle -->
            <div class="row justify-content-center">
                <div class="col-lg-5 col-md-8">
                    <div class="section-tittle text-center mb-100">
                        <h2>Program Pricing</h2>
                        <%--<p>There arge many variations ohf passages of sorem gp ilable, but the majority have ssorem gp iluffe.</p>--%>
                    </div>
                </div>
            </div>
            <div class="row">
                <%--<div class="col-xl-4 col-lg-4 col-md-6 col-sm-10">
                    <div class="single-card text-center mb-30">
                        <div class="card-top">
                            <span>Day - 1</span>
                            <h4>$ 05.00</h4>
                        </div>
                        <div class="card-bottom">
                            <ul>
                                <li>Increase traffic 50%</li>
                                <li>E-mail support</li>
                                <li>10 Free Optimization</li>
                                <li>24/7  support</li>
                            </ul>
                            <a href="#" class="black-btn">Buy Ticket</a>
                        </div>
                    </div>
                </div>--%>
                <%--<div class="col-xl-4 col-lg-4 col-md-6 col-sm-10">
                    <div class="single-card active text-center mb-30">
                        <div class="card-top">
                            <span>Day - 1,2,3</span>
                       <h4 >$ 08.00</h4>
                            <h4 id="TicketCount" runat="server"></h4>
                        </div>
                        <div class="card-bottom">
                            <%--<ul>
                                <li>Increase traffic 50%</li>
                                <li>E-mail support</li>
                                <li>10 Free Optimization</li>
                                <li>24/7  support</li>
                            </ul>
                            <asp:Button ID="BuyTicket" runat="server" CssClass="btn btn-primary" Text="Buy Now"  />
                            <a href="#" class="black-btn">Buy Ticket</a>
                        </div>
                    </div>
                </div>--%>
                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-10">
                    <div class="single-card text-center mb-30">
                        <div class="card-top">
                            <span>Day - 1,2</span>
                            <h4 id="TicketCount" runat="server"></h4>
                            <%--<h4>$ 06.00</h4>--%>
                        </div>
                        <div class="card-bottom">
                            <%--<ul>
                                <li>Increase traffic 50%</li>
                                <li>E-mail support</li>
                                <li>10 Free Optimization</li>
                                <li>24/7  support</li>
                            </ul>
                            <a href="#" class="black-btn">Buy Ticket</a>--%>
                             <asp:Button ID="BuyTicket" runat="server" CssClass="btn btn-primary" Text="Buy Now"  />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Pricing Card End -->
  
         </main>
        </form> 
   <footer>
        <div class="footer-area footer-padding">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                       <div class="single-footer-caption mb-50">
                         <div class="single-footer-caption mb-30">
                             <div class="footer-tittle">
                                 <h4>About Us</h4>
                                 <div class="footer-pera">
                                     <p>Heaven frucvitful doesn't cover lesser dvsays appear creeping seasons so behold.</p>
                                </div>
                             </div>
                         </div>
                       </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Contact Info</h4>
                                <ul>
                                    <li>
                                        <p>Address :Your address goes here, your demo address.</p>
                                    </li>
                                    <li><a href="#">Phone : +8880 44338899</a></li>
                                    <li><a href="#">Email : info@colorlib.com</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Important Link</h4>
                                <ul>
                                    <li><a href="#"> View Project</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                    <%--<li><a href="#">Testimonial</a></li>
                                    <li><a href="#">Proparties</a></li>--%>
                                    <li><a href="#">Support</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Newsletter</h4>
                                <div class="footer-pera footer-pera2">
                                 <p>Heaven fruitful doesn't over lesser in days. Appear creeping.</p>
                             </div>
                             <!-- Form -->
                            <%-- <div class="footer-form" >
                                 <div id="mc_embed_signup">
                                     <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                     method="get" class="subscribe_form relative mail_part">
                                         <input type="email" name="email" id="newsletter-form-email" placeholder="Email Address"
                                         class="placeholder hide-on-focus" onfocus="this.placeholder = ''"
                                         onblur="this.placeholder = ' Email Address '"/>
                                         <div class="form-icon">
                                             <button type="submit" name="submit" id="newsletter-submit"
                                             class="email_icon newsletter-submit button-contactForm"><img src="assets/img/gallery/form.png" alt=""></button>
                                         </div>
                                         <div class="mt-10 info"></div>
                                     </form>
                                 </div>
                             </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
               <!--  -->
               <div class="row footer-wejed justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <!-- logo -->
                        <div class="footer-logo mb-20">
                        <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                    <div class="footer-tittle-bottom">
                        <span>5000+</span>
                        <p>Talented Hunter</p>
                    </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                        <div class="footer-tittle-bottom">
                            <span>451</span>
                            <p>Talented Hunter</p>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                        <!-- Footer Bottom Tittle -->
                        <div class="footer-tittle-bottom">
                            <span>568</span>
                            <p>Talented Hunter</p>
                        </div>
                    </div>
               </div>
            </div>
        </div>
        <!-- footer-bottom area -->
        <div class="footer-bottom-area footer-bg">
            <div class="container">
                <div class="footer-border">
                     <div class="row d-flex justify-content-between align-items-center">
                         <div class="col-xl-10 col-lg-8 ">
                             <div class="footer-copy-right">
                                 <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                             </div>
                         </div>
                         <div class="col-xl-2 col-lg-4">
                             <div class="footer-social f-right">
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="https://www.facebook.com/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fas fa-globe"></i></a>
                                <a href="#"><i class="fab fa-behance"></i></a>
                             </div>
                         </div>
                     </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
   </footer>
   
     <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>

    <!-- JS here -->

    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
   
    <script src="./assets/js/popper.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="./assets/js/owl.carousel.min.js"></script>
    <script src="./assets/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/animated.headline.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

    <!-- Date Picker -->
    <script src="./assets/js/gijgo.min.js"></script>
    <!-- Nice-select, sticky -->
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>
    
    <!-- counter , waypoint -->
    <script src="./assets/js/jquery.counterup.min.js"></script>
    <script src="./assets/js/waypoints.min.js"></script>
    <script src="./assets/js/jquery.countdown.min.js"></script>
    <!-- contact js -->
    <script src="./assets/js/contact.js"></script>
    <script src="./assets/js/jquery.form.js"></script>
    <script src="./assets/js/jquery.validate.min.js"></script>
    <script src="./assets/js/mail-script.js"></script>
    <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>
    
</body>
</html>
