<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Home | Genting Vegas </title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/logo/favicon.ico" />

    <!-- all css here -->

    <!-- bootstrap v3.3.6 css -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- owl.carousel css -->
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link rel="stylesheet" href="css/owl.transitions.css" />
    <!-- Animate css -->
    <link rel="stylesheet" href="css/animate.css" />
    <!-- meanmenu css -->
    <link rel="stylesheet" href="css/meanmenu.min.css" />
    <!-- font-awesome css -->
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/themify-icons.css" />
    <!-- magnific css -->
    <link rel="stylesheet" href="css/magnific.min.css" />
    <!-- style css -->
    <link rel="stylesheet" href="style.css" />
    <!-- responsive css -->
    <link rel="stylesheet" href="css/responsive.css" />
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- modernizr css -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <script>                 
        //  function UpdateTime(time)
        //  {              var timerdate = time;
        //      $("#countdown").countdown(timerdate, function (event) {                  
        //          $(this).html(event.strftime("<div class='cd-item'><span>%D</span><p>Days</p> </div>" + "<div class='cd-item'><span>%H</span><p>Hrs</p> </div>" + "<div class='cd-item'><span>%M</span><p>Min</p> </div>" + "<div class='cd-item'><span>%S</span><p>Sec</p> </div>"));
        //          });               

        //}
        //$(document).ready(function () {

        //    $("#Account").Hide();
        //    //$("#Counter").Hide();

        //});
    </script>


</head>
<body>


    <div id="preloader"></div>
    <header class="header-one">
        <form runat="server">
            <!-- Start top bar -->
            <div class="topbar-area">
                <div class="container">
                    <div class="row">
                        <div class=" col-md-8 col-sm-8 col-xs-12">
                            <div class="topbar-left">
                                <ul>
                                    <li><a href="#"><i class="fa fa-envelope"></i>help@gentingvegas.com</a></li>
                                    <li><a href="#"><i class="fa fa-clock-o"></i>Live support-</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="topbar-right">
                                <ul>
                                    <%--<li><a href="#"><img src="img/icon/w1.png" alt="">English</a>
                                       <ul>
                                           <li><a href="#"><img src="img/icon/w2.png" alt="">Deutsch</a>
                                           <li><a href="#"><img src="img/icon/w3.png" alt="">Espa�ol</a>
                                           <li><a href="#"><img src="img/icon/w4.png" alt="">Fran�ais</a>
                                           <li><a href="#"><img src="img/icon/w5.png" alt="">???????</a>
                                       </ul>
                                    </li>
                                    <li><a id="log" runat="server" href="#" onclick="BtnLogin()"><img runat="server" src="img/icon/login.png" alt=""/>Login</a> </li>--%>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End top bar -->
            <!-- header-area start -->
            <div id="sticker" class="header-area header-area-2 hidden-xs">
                <div class="container">
                    <div class="row">
                        <!-- logo start -->
                        <div class="col-md-3 col-sm-3">
                            <div class="logo">
                                <!-- Brand -->
                                <a class="navbar-brand " href="Home.aspx">
                                    <img src="img/logo/LOGO.jpg" alt="" />
                                </a>
                            </div>
                            <!-- logo end -->
                        </div>
                        <div class="col-md-9 col-sm-9">
                            <div class="header-right-link">
                                <!-- search option end -->
                                <%-- <asp:Button ID="btnLogin" runat="server" Text="Login"  CssClass="s-menu" OnClick="btnLogin_Click" />--%>
                                <a id="Log" runat="server" class="s-menu" href="Login.aspx">Join now / Login</a>

                            </div>
                            <%-- <div class="header-right-link">
                                <!-- search option end -->
                                <asp:Button ID="BtnLogin" runat="server"  Text="Login"  CssClass="slide-btn login-btn" />
								<%--<a id="A1" runat="server" class="s-menu" href="Login.aspx">Join now / Login</a>-
                                
                            </div>--%>
                            <!-- mainmenu start -->
                            <nav class="navbar navbar-default">
                                <div class="collapse navbar-collapse" id="navbar-example">
                                    <div class="main-menu">
                                        <ul class="nav navbar-nav navbar-right">
                                            <%--<li><a class="pagess" href="Home.aspx">Home</a>--%>
                                            <%--<ul class="sub-menu">
                                                    <li><a href="index.html">Home 01</a></li>
                                                    <li><a href="index-2.html">Home 02</a></li>
                                                    <li><a href="index-3.html">Home 03</a></li>
                                                </ul>--%>
                                            <%--</li>--%>
                                            <%--<li><a class="pagess" href="play.html">Play</a></li>
                                            <li><a class="pagess" href="#">Games</a>
                                                <ul class="sub-menu">
                                                    <li><a href="games.html">All Games</a></li>
                                                    <li><a href="games-details.html">Games Details</a></li>
                                                </ul>
                                            </li>--%>
                                            <%--  <li><a class="pagess" href="lottery.aspx">Lottery</a></li>--%>
                                            <%-- <li><a class="pagess" href="#">Pages</a>
                                                <ul class="sub-menu">
                                                   <li><a href="about.html">About</a></li>
                                                    <li><a href="team.html">team</a></li>
                                                    <li><a href="faq.html">FAQ</a></li>
                                                    <li><a href="pricing.html">Pricing</a></li>
                                                    <li><a href="login.html">Login</a></li>
                                                    <li><a href="signup.html">Signup</a></li>
                                                    <li><a href="error.html">Error</a></li>
                                                    <li><a href="terms.html">terms & Conditions</a></li>
                                                </ul>
                                            </li>--%>
                                            <%-- <li><a class="pagess" href="#">Blog</a>
                                                <ul class="sub-menu">
                                                    <li><a href="blog.html">Blog grid</a></li>
                                                    <li><a href="blog-sidebar.html">Blog Sidebar</a></li>
                                                    <li><a href="blog-details.html">Blog Details</a></li>
                                                </ul>
                                            </li>--%>
                                            <%-- <li><a href="contact.html">contacts</a></li>--%>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            <!-- mainmenu end -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- header-area end -->
            <!-- mobile-menu-area start -->
            <div class="mobile-menu-area hidden-lg hidden-md hidden-sm">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="mobile-menu">
                                <div class="logo">
                                    <a href="index.html">
                                        <img src="img/logo/logo2.png" alt="" /></a>
                                </div>
                                <nav id="dropdown">
                                    <ul>
                                        <li><a class="pagess" href="index.html">Home</a>
                                            <ul class="sub-menu">
                                                <li><a href="index.html">Home 01</a></li>
                                                <li><a href="index-2.html">Home 02</a></li>
                                                <li><a href="index-3.html">Home 03</a></li>
                                            </ul>
                                        </li>
                                        <li><a class="pagess" href="play.html">Play</a></li>
                                        <li><a class="pagess" href="#">Games</a>
                                            <ul class="sub-menu">
                                                <li><a href="games.html">All Games</a></li>
                                                <li><a href="games-details.html">Games Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a class="pagess" href="lottery.html">Lottery</a></li>
                                        <li><a class="pagess" href="#">Pages</a>
                                            <ul class="sub-menu">
                                                <li><a href="about.html">About</a></li>
                                                <li><a href="team.html">team</a></li>
                                                <li><a href="faq.html">FAQ</a></li>
                                                <li><a href="pricing.html">Pricing</a></li>
                                                <li><a href="login.html">Login</a></li>
                                                <li><a href="signup.html">Signup</a></li>
                                                <li><a href="error.html">Error</a></li>
                                                <li><a href="terms.html">terms & Conditions</a></li>
                                            </ul>
                                        </li>
                                        <li><a class="pagess" href="#">Blog</a>
                                            <ul class="sub-menu">
                                                <li><a href="blog.html">Blog grid</a></li>
                                                <li><a href="blog-sidebar.html">Blog Sidebar</a></li>
                                                <li><a href="blog-details.html">Blog Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="contact.html">contacts</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- mobile-menu-area end -->
        </form>
    </header>
    <!-- header end -->
    <!-- Start Slider Area -->
    <%-- <div class="intro-area intro-area-2">
            <div class="bg-wrapper">
                <img src="img/background/casino-table-in-close-up-view-4677402.jpg" alt="">                
            </div>
			<div class="intro-content">
				<div class="slider-content">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="slide-all-text">
								    <!-- layer 1 -->
                                    <div class="layer-1 wow fadeInUp" data-wow-delay="0.3s">
                                        <h2 class="title2">Playing online games<span class="color"> Win Reward </span></h2>
                                    </div>
                                    <!-- layer 2 -->
                                    <div class="layer-2 wow fadeInUp" data-wow-delay="0.5s">
                                        <p>We develop effective plans to move your customers behaviour. customer can be alwayes his profit.</p>
                                    </div>
                                    <!-- layer 3 -->
                                    <div class="layer-3 wow fadeInUp" data-wow-delay="0.7s">
                                        <a href="#" class="ready-btn" >Get Started</a>
                                    </div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
        </div>--%>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>


        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/background/img3.png" alt="..." />
                <%--<div class="carousel-caption">
                        <h2 class="title2">Playing online games<span class="color"> Win Reward </span></h2>
                    </div>--%>
            </div>
            <div class="item">
                <img src="img/background/img2.jpeg" alt="..." />
                <%--<div class="carousel-caption">
                        <h2 class="title2">Playing online games1<span class="color"> Win Reward 1</span></h2>
                    </div>--%>
            </div>
            <div class="item">
                <img src="img/background/img1.jpg" alt="..." />
                <%--<div class="carousel-caption">
                        <h2 class="title2">Playing online games2<span class="color"> Win Reward 1</span></h2>
                    </div>--%>
            </div>

        </div>

        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="icon-prev" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="icon-next" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!-- End Slider Area -->
    <!-- Start Achivement area -->
    <div class="achivement-area bg-color area-padding-2">
        <div class="container">
            <div class="row">
                <div class="achivement-content">
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <!-- fun_text  -->
                        <div class="single-achive first-achive">
                            <div class="achive-image">
                                <img src="img/about/achive1.png" alt="">
                            </div>
                            <div class="achivement-text">
                                <span id="ActiveCount" runat="server" class="achive-number"></span>
                                <h6>Live online</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <!-- fun_text  -->
                        <div class="single-achive second-achive">
                            <div class="achive-image">
                                <img src="img/about/achive2.png" alt="">
                            </div>
                            <div class="achivement-text">
                                <span id="userCount" runat="server" class="achive-number"></span>
                                <h6>Active Member</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <!-- fun_text  -->
                        <div class="single-achive">
                            <div class="achive-image">
                                <img src="img/about/achive3.png" alt="">
                            </div>
                            <div class="achivement-text">
                                <span class="achive-number">2000K+</span>
                                <h6>Daily Reward</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Achivement area -->
    <!-- Start About Area -->
    <div class="about-area about-area-2 bg-color-2 fix area-padding-2">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <!-- Start services -->
                    <div class="support-services">
                        <img class="support-images" src="img/about/ab-icon.png" alt="">
                        <div class="support-content">
                            <h4>Live online game</h4>
                            <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define. define their new business objectives and then.</p>
                        </div>
                    </div>
                </div>
                <!-- Start services -->
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="support-services">
                        <img class="support-images" src="img/about/ab-icon2.png" alt="">
                        <div class="support-content">
                            <h4>Instant Reward</h4>
                            <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define. define their new business objectives and then</p>
                        </div>
                    </div>
                </div>
                <!-- Start services -->
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="support-services">
                        <img class="support-images" src="img/about/ab-icon3.png" alt="">
                        <div class="support-content">
                            <h4>Refferral bonus</h4>
                            <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define. define their new business objectives and then.</p>
                        </div>
                    </div>
                </div>
                <!-- Start services -->
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="support-services">
                        <img class="support-images" src="img/about/ab-icon4.png" alt="">
                        <div class="support-content">
                            <h4>100% secure</h4>
                            <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define. define their new business objectives and then.</p>
                        </div>
                    </div>
                </div>
                <!-- Start services -->
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="support-services">
                        <img class="support-images" src="img/about/ab-icon5.png" alt="">
                        <div class="support-content">
                            <h4>Winning reward</h4>
                            <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define. define their new business objectives and then.</p>
                        </div>
                    </div>
                </div>
                <!-- Start services -->
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="support-services">
                        <img class="support-images" src="img/about/ab-icon6.png" alt="">
                        <div class="support-content">
                            <h4>Live Support</h4>
                            <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define. define their new business objectives and then.</p>
                        </div>
                    </div>
                </div>
                <!-- Start services -->
            </div>
        </div>
    </div>
    <!-- End About Area -->
    <!-- Start Games Area -->
    <%--<div class="games-area games-area-2  bg-color area-padding-2">
            <div class="container">
              <div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="section-headline text-center">
							<h3>Online games</h3>
							<p>Dummy text is also used to demonstrate the appearance of different typefaces and layouts</p>
						</div>
					</div>
				</div>
               <div class="row">
					<div class="all-games">
                        <!-- single-games end-->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-games">
                                <h4>Wins goal</h4> 
                                <div class="games-img">
                                    <img src="img/games/g1.png" alt="">
                                </div>
                                <a class="games-btn" href="#">Play Now</a>
                            </div>
                        </div>
                        <!-- single-games end-->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-games">
                                <h4>Best Reward</h4> 
                                <div class="games-img">
                                    <img src="img/games/g2.png" alt="">
                                </div>
                                <a class="games-btn" href="#">Play Now</a>
                            </div>
                        </div>
                        <!-- single-games end-->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-games">
                                <h4>Win Award</h4> 
                                <div class="games-img">
                                    <img src="img/games/g3.png" alt="">
                                </div>
                                <a class="games-btn" href="#">Play Now</a>
                            </div>
                        </div>
                        <!-- single-games end-->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-games">
                                <h4>best win</h4> 
                                <div class="games-img">
                                    <img src="img/games/g4.png" alt="">
                                </div>
                                <a class="games-btn" href="#">Play Now</a>
                            </div>
                        </div>
                        <!-- single-games end-->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-games">
                               <h4>Pirates of sea</h4> 
                                <div class="games-img">
                                    <img src="img/games/g5.png" alt="">
                                </div>
                                <a class="games-btn" href="#">Play Now</a>
                            </div>
                        </div>
                        <!-- single-games end-->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-games">
                               <h4>Hunter fight</h4> 
                                <div class="games-img">
                                    <img src="img/games/g6.png" alt="">
                                </div>
                                <a class="games-btn" href="#">Play Now</a>
                            </div>
                        </div>
                        <!-- single-games end-->
					</div>
                </div>
            </div>
        </div>--%>
    <!-- Games area End -->
    <!-- Start Chips area -->
    <%-- <div class="chips-area bg-color-2 area-padding-2">
            <div class="container">
                 <div class="row">
                    <div class="chips-content">
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-chips">
                                <span class="chips-price">0.21C</span>
                                <div class="chips-image">
                                    <img src="img/about/chips1.png" alt="">
                                </div>
                                <div class="chips-text">
                                    <span class="chips-number">100 Coins</span>
                                    <a class="chips-btn" href="#">Play Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-chips">
                                <span class="chips-price">0.21C</span>
                                <div class="chips-image">
                                    <img src="img/about/chips2.png" alt="">
                                </div>
                                <div class="chips-text">
                                    <span class="chips-number">200 Coins</span>
                                    <a class="chips-btn" href="#">Play Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-chips">
                                <span class="chips-price">0.21C</span>
                                <div class="chips-image">
                                    <img src="img/about/chips2.png" alt="">
                                </div>
                                <div class="chips-text">
                                    <span class="chips-number">300 Coins</span>
                                   <a class="chips-btn" href="#">Play Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-chips">
                                <span class="chips-price">0.21C</span>
                                <div class="chips-image">
                                    <img src="img/about/chips3.png" alt="">
                                </div>
                                <div class="chips-text">
                                    <span class="chips-number">300 Coins</span>
                                    <a class="chips-btn" href="#">Play Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-chips">
                                <span class="chips-price">0.21C</span>
                                <div class="chips-image">
                                    <img src="img/about/chips1.png" alt="">
                                </div>
                                <div class="chips-text">
                                    <span class="chips-number">500 Coins</span>
                                    <a class="chips-btn" href="#">Play Now</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <!-- fun_text  -->
                            <div class="single-chips">
                                <span class="chips-price">0.21C</span>
                                <div class="chips-image">
                                    <img src="img/about/chips1.png" alt="">
                                </div>
                                <div class="chips-text">
                                    <span class="chips-number">400 Coins</span>
                                    <a class="chips-btn" href="#">Play Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
    <!-- End Achivement area -->
    <!-- Start How to area -->
    <div class="how-to-area bg-color area-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="section-headline text-center">
                        <h3>How to start</h3>
                        <p>Help agencies to define their new business objectives and then create professional software.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="all-how">
                    <!-- single-well end-->
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="single-how first-item">
                            <div class="how-img">
                                <span class="h-number">01</span>
                                <a class="big-icon" href="#">
                                    <img src="img/about/h1.png" alt=""></a>
                            </div>
                            <div class="how-wel">
                                <div class="how-content">
                                    <h4>Get access</h4>
                                    <p>Aspernatur sit adipisci quaerat unde at neque Redug Lagre dolor sit amet consectetu. Agencies to define their new business objectives and then create</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- single-well end-->
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="single-how ">
                            <div class="how-img">
                                <span class="h-number">02</span>
                                <a class="big-icon" href="#">
                                    <img src="img/about/h2.png" alt=""></a>
                            </div>
                            <div class="how-wel">
                                <div class="how-content">
                                    <h4>Enter games</h4>
                                    <p>Aspernatur sit adipisci quaerat unde at neque Redug Lagre dolor sit amet consectetu. Agencies to define their new business objectives and then create</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- single-well end-->
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="single-how thired-item">
                            <div class="how-img">
                                <span class="h-number">03</span>
                                <a class="big-icon" href="#">
                                    <img src="img/about/h3.png" alt=""></a>
                            </div>
                            <div class="how-wel">
                                <div class="how-content">
                                    <h4>Win Award</h4>
                                    <p>Aspernatur sit adipisci quaerat unde at neque Redug Lagre dolor sit amet consectetu. Agencies to define their new business objectives and then create</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End How to area -->
    <!--Start payment-history area -->
    <div class="payment-history-area bg-color fix area-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="section-headline text-center">
                        <h3>Games history</h3>
                        <p>Dummy text is also used to demonstrate the appearance of different typefaces and layouts</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="deposite-content">
                        <div class="diposite-box">
                            <div class="deposite-table">
                                <table>
                                    <tr>
                                        <th>Name</th>
                                        <th>Code Id</th>
                                        <th>Games</th>
                                        <th>Level</th>
                                        <th>Reward</th>
                                        <th>Games ID</th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m.png" alt="">Ragner Lorth</td>
                                        <td>EmI-76076</td>
                                        <td>Redline</td>
                                        <td>Level-122</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m1.png" alt="">Adams jems</td>
                                        <td>EmI-65342</td>
                                        <td>Danger war</td>
                                        <td>Level-132</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m2.png" alt="">Admond sayhel</td>
                                        <td>EmI-20053</td>
                                        <td>Casino</td>
                                        <td>Level-153</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m3.png" alt="">Jecky chen</td>
                                        <td>EmI-60754</td>
                                        <td>Redline</td>
                                        <td>Level-92</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m4.png" alt="">Junior mlind</td>
                                        <td>EmI-76076</td>
                                        <td>Casino</td>
                                        <td>Level-88</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m5.png" alt="">Andrew kolin</td>
                                        <td>EmI-76076</td>
                                        <td>Dicks game</td>
                                        <td>Level-184</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m6.png" alt="">Anjel loyel</td>
                                        <td>EmI-76076</td>
                                        <td>Redline</td>
                                        <td>Level-102</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="img/icon/m7.png" alt="">Jenefer july</td>
                                        <td>EmI-76076</td>
                                        <td>Redline</td>
                                        <td>Level-102</td>
                                        <td>00.83 BTC</td>
                                        <td>BTC-0.02</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End payment-history area -->
    <!-- Start Overview Area -->
    <%--<div class="overview-area bg-color-2 fix area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="overview-content">
                            <div class="overview-images">
                                <img src="img/about/ab.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="overview-text">
                            <h3>Playing games winning instant Reward and Bonus </h3>
						    <p>Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define their new business objectives and then create</p>
                            <ul>
                               <li><a href="#">Innovation idea latest business tecnology</a></li>
                                <li><a href="#">Digital content marketing online clients plateform</a></li>
                                <li><a href="#">Safe secure services for you online email account</a></li>
                            </ul>
                            <a class="overview-btn" href="#">Signup today</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
    <!-- End Overview Area -->
    <!-- Start Blog Area-->
    <%--<div class="blog-area fix bg-color area-padding-2">
            <div class="container">
                <div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="section-headline text-center">
                            <h3>Games world news</h3>
							<p>Dummy text is also used to demonstrate the appearance of different typefaces and layouts</p>
						</div>
					</div>
				</div>
                <div class="row">
                    <div class="blog-grid home-blog">
                        <!-- Start single blog -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-blog">
                               <div class="blog-image">
									<a class="image-scale" href="#">
										<img src="img/blog/b1.jpg" alt="">
									</a>
								</div>
                                <div class="blog-content">
                                   <div class="blog-meta">
                                        <span class="admin-type">
                                            <i class="fa fa-user"></i>
                                            Admin
                                        </span>
                                        <span class="date-type">
                                            <i class="fa fa-calendar"></i>
                                            20 july, 2019
                                        </span>
                                        <span class="comments-type">
                                            <i class="fa fa-comment-o"></i>
                                            13
                                        </span>
                                    </div>
                                    <a href="#">
                                        <h4>Creative games design clients response is better</h4>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- End single blog -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-blog">
                                <div class="blog-content">
                                   <div class="blog-meta">
                                       <span class="admin-type">
                                            <i class="fa fa-user"></i>
                                            Admin
                                        </span>
                                        <span class="date-type">
                                           <i class="fa fa-calendar"></i>
                                            13 may, 2018
                                        </span>
                                        <span class="comments-type">
                                            <i class="fa fa-comment-o"></i>
                                            16
                                        </span>
                                    </div>
                                    <a href="#">
                                        <h4>Games development is a best work in future world</h4>
                                    </a>
                                </div>
                                <div class="blog-image">
									<a class="image-scale" href="#">
										<img src="img/blog/b2.jpg" alt="">
									</a>
								</div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-blog">
                                <div class="blog-image">
									<a class="image-scale" href="#">
										<img src="img/blog/b3.jpg" alt="">
									</a>
								</div>
                                <div class="blog-content">
                                   <div class="blog-meta">
                                        <span class="admin-type">
                                            <i class="fa fa-user"></i>
                                            Admin
                                        </span>
                                        <span class="date-type">
                                           <i class="fa fa-calendar"></i>
                                            24 april, 2019
                                        </span>
                                        <span class="comments-type">
                                            <i class="fa fa-comment-o"></i>
                                            07
                                        </span>
                                    </div>
                                    <a href="#">
                                        <h4>You can trust me and playing with best win</h4>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- End single blog -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-blog">
                                <div class="blog-content">
                                    <div class="blog-meta">
                                        <span class="admin-type">
                                            <i class="fa fa-user"></i>
                                            Admin
                                        </span>
                                        <span class="date-type">
                                           <i class="fa fa-calendar"></i>
                                            28 june, 2019
                                        </span>
                                        <span class="comments-type">
                                            <i class="fa fa-comment-o"></i>
                                            32
                                        </span>
                                    </div>
                                    <a href="#">
                                        <h4>Games playerwant to be benifit pateform games.</h4>
                                    </a>
                                </div>
                                <div class="blog-image">
									<a class="image-scale" href="#">
										<img src="img/blog/b4.jpg" alt="">
									</a>
								</div> 
                            </div>
                        </div>
                        <!-- End single blog -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-blog">
                                <div class="blog-image">
									<a class="image-scale" href="#">
										<img src="img/blog/b5.jpg" alt="">
									</a>
								</div>
                                <div class="blog-content">
                                    <div class="blog-meta">
                                        <span class="admin-type">
                                            <i class="fa fa-user"></i>
                                            Admin
                                        </span>
                                        <span class="date-type">
                                           <i class="fa fa-calendar"></i>
                                            28 june, 2019
                                        </span>
                                        <span class="comments-type">
                                            <i class="fa fa-comment-o"></i>
                                            32
                                        </span>
                                    </div>
                                    <a href="#">
                                        <h4>Games player man want to be win any game</h4>
                                    </a>
                                </div> 
                            </div>
                        </div>
                        <!-- End single blog -->
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="single-blog">
                                <div class="blog-content">
                                    <div class="blog-meta">
                                        <span class="admin-type">
                                            <i class="fa fa-user"></i>
                                            Admin
                                        </span>
                                        <span class="date-type">
                                           <i class="fa fa-calendar"></i>
                                            28 june, 2019
                                        </span>
                                        <span class="comments-type">
                                            <i class="fa fa-comment-o"></i>
                                            32
                                        </span>
                                    </div>
                                    <a href="#">
                                        <h4>Games developer must complete thier</h4>
                                    </a>
                                </div>
                                <div class="blog-image">
									<a class="image-scale" href="#">
										<img src="img/blog/b6.jpg" alt="">
									</a>
								</div>
                            </div>
                        </div>
                        <!-- End single blog -->
                    </div>
                </div>
                <!-- End row -->
            </div>
        </div>--%>
    <!-- End Blog Area-->
    <!-- Start Payments Area -->
    <%--<div class="payment-area bg-color">
            <div class="container">
               <div class="row">
					<div class="inner-payment">
					    <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="section-headline text-center">
                                <h3>Games Partner</h3>
                                <p>Dummy text is also used to demonstrate the appearance of different typefaces and layouts</p>
                            </div>
                        </div>
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="card-list">
                                <div class="single-card">
                                    <a href="#"><img src="img/brand/1.png" alt=""></a>
                                </div>
                                <div class="single-card">
                                    <a href="#"><img src="img/brand/2.png" alt=""></a>
                                </div>
                                <div class="single-card">
                                    <a href="#"><img src="img/brand/3.png" alt=""></a>
                                </div>
                                <div class="single-card">
                                    <a href="#"><img src="img/brand/4.png" alt=""></a>
                                </div>
                                <div class="single-card">
                                    <a href="#"><img src="img/brand/5.png" alt=""></a>
                                </div>
                            </div>
                        </div>
					</div>
                </div>
            </div>
        </div>--%>
    <!-- End Payments Area -->
    <!-- Start Footer Area -->
    <footer class="footer-1">
        <div class="footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="footer-content logo-footer">
                            <div class="footer-head">
                                <div class="footer-logo">
                                    <a class="footer-black-logo" href="#">
                                        <img src="img/logo/logo2.png" alt=""></a>
                                </div>
                                <p>
                                    Replacing a  maintains the amount of lines. When replacing a selection. help agencies to define their new business objectives and then create. Replacing a  maintains the amount of lines. 
                                </p>
                                <%-- <div class="subs-feilds">
                                        <div class="suscribe-input">
                                            <input type="email" class="email form-control width-80" id="sus_email" placeholder="Type Email">
                                            <button type="submit" id="sus_submit" class="add-btn">Subscribe</button>
                                        </div>
                                    </div>--%>
                            </div>
                        </div>
                    </div>
                    <!-- end single footer -->
                    <div class="col-md-2 col-sm-3 col-xs-12">
                        <div class="footer-content">
                            <div class="footer-head">
                                <h4>Games list</h4>
                                <ul class="footer-list">
                                    <li><a href="#">Lottery</a></li>

                                    <%-- <li><a href="#">Dicks game</a></li>
                                        <li><a href="#">Lobester</a></li>
                                        <li><a href="#">Gangstar</a></li>
                                        <li><a href="#">Royal Casino</a></li>
                                        <li><a href="#">Align fight</a></li>
                                        <li><a href="#">Black night</a></li>--%>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- end single footer -->
                    <div class="col-md-2 col-sm-3 col-xs-12">
                        <div class="footer-content">
                            <div class="footer-head">
                                <h4>Company</h4>
                                <ul class="footer-list">
                                    <li><a href="about.html">About us</a></li>
                                    <li><a href="#">Services </a></li>
                                    <%-- <li><a href="#">Events</a></li>
                                        <li><a href="#">Promotion</a></li>
                                        <li><a href="#">Transition</a></li>
                                        <li><a href="#">Social Media</a></li>--%>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- end single footer -->
                    <div class="col-md-2 hidden-sm col-xs-12">
                        <div class="footer-content">
                            <div class="footer-head">
                                <h4>Payments</h4>
                                <ul class="footer-list">
                                    <%--<li><a href="#">Ripple coin</a></li>--%>
                                    <li><a href="#">Bitcoin</a></li>
                                    <li><a href="#">Ethireum</a></li>
                                    <li><a href="#">Skrill</a></li>
                                    <%-- <li><a href="#">Light coin</a></li>
                                        <li><a href="#">Coin base</a></li>--%>
                                    <%-- <li><a href="#">Skrill card</a></li>--%>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- end single footer -->
                    <div class="col-md-2 hidden-sm col-xs-12">
                        <div class="footer-content last-content">
                            <div class="footer-head">
                                <h4>Support</h4>
                                <ul class="footer-list">
                                    <li><a href="#">Customer Care</a></li>
                                    <%--  <li><a href="#">Live chat</a></li>
                                        <li><a href="#">Notification</a></li>--%>
                                    <li><a href="#">Privacy</a></li>
                                    <li><a href="#">Terms & Condition</a></li>
                                    <li><a href="#">Contact us </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Start Footer Bottom Area -->
        <div class="footer-area-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="copyright">
                            <p>
                                Copyright � 2020
                                    <a href="#">Genting Vegas </a>All Rights Reserved
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Footer Bottom Area -->
    </footer>
    <!-- End Footer Area -->

    <!-- all js here -->

    <!-- jquery latest version -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- owl.carousel js -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- magnific js -->
    <script src="js/magnific.min.js"></script>
    <!-- wow js -->
    <script src="js/wow.min.js"></script>
    <!-- meanmenu js -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- Form validator js -->
    <script src="js/form-validator.min.js"></script>
    <!-- plugins js -->
    <script src="js/plugins.js"></script>
    <!-- main js -->
    <script src="js/main.js"></script>




</body>
</html>
