<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8"/>
		<meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <title>Login - Playdo</title>
    <meta name="description" content=""/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>

		<!-- favicon -->		
		<link rel="shortcut icon" type="image/x-icon" href="img/logo/favicon.ico"/>

		<!-- all css here -->

		<!-- bootstrap v3.3.6 css -->
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<!-- font-awesome css -->
		<link rel="stylesheet" href="css/font-awesome.min.css"/>
		<!-- style css -->
		<link rel="stylesheet" href="style.css"/>
		<!-- responsive css -->
		<link rel="stylesheet" href="css/responsive.css" />

		<!-- modernizr css -->
		<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body  data-spy="scroll" data-target="#navbar-example">
      <div class="login-area area-padding fix">
          <div class="login-overlay"></div>
            <div class="table">
                <div class="table-cell">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">
                                <div class="login-form">
                                    <h4 class="login-title text-center">LOGIN</h4>
                                    <div class="row">
                                        <form id="contactForm" runat="server" class="log-form">
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <%--<asp:TextBox ID="UserId" runat="server" CssClass="form-control" required="true" placeholder="Username"  required data-error="Please enter your name" ></asp:TextBox>--%>
                                                <input type="text" id="UserId" runat="server" class="form-control" placeholder="User ID" required="required" autocomplete="off"  data-error-messsage="Please enter your name"/>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <input type="password" id="Password" runat="server" class="form-control" placeholder="Password" autocomplete="off" required="required"  data-error="Please enter your password"/>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                                <div class="check-group flexbox">
                                                    <label class="check-box">
                                                        <input type="checkbox" class="check-box-input" checked="checked"/>
                                                        <span class="remember-text">Remember me</span>
                                                    </label>

                                                    <a class="text-muted" href="#">Forgot password?</a>
                                                </div>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                                   <asp:Button ID="BtnLogin" runat="server"  Text="Login"  CssClass="slide-btn login-btn" OnClick="BtnLogin_Click" />
                                                <%--<button type="submit" runat="server" id="submit" class="slide-btn login-btn">Login</button>--%>
                                                <div id="msgSubmit" class="h3 text-center hidden"></div> 
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                               <%-- <div class="clear"></div>
                                                <div class="separetor text-center"><span>Or with Sign</span></div>--%>
                                                <div class="sign-icon">
                                                    <%--<ul>
                                                        <li><a class="facebook" href="#">Facebook</a></li>
                                                        <li><a class="twitter" href="#">twitter</a></li>
                                                        <li><a class="google" href="#">google+</a></li>
                                                    </ul>--%>
                                                    <div class="acc-not">Don't have an account  <a href="Signup.aspx">Sign up</a></div>
                                                </div> 
                                            </div> 
                                        </form> 
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>
                </div>
                </div>
        </div>
        <!-- End Slider Area -->
		
		<!-- all js here -->

		<!-- jquery latest version -->
		<script src="js/vendor/jquery-1.12.4.min.js"></script>
		<!-- bootstrap js -->
		<script src="js/bootstrap.min.js"></script>
		<!-- Form validator js -->
		<script src="js/form-validator.min.js"></script>
		<!-- plugins js -->
		<script src="js/plugins.js"></script>
  
</body>
</html>
