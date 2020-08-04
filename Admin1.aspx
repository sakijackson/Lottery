<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin1.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/> 
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Admin | Playdo</title>
       <link rel="shortcut icon" type="image/x-icon" href="img/logo/favicon.ico">

    <!-- all css here -->

    <!-- bootstrap v3.3.6 css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- owl.carousel css -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- Animate css -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- meanmenu css -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- font-awesome css -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- magnific css -->
    <link rel="stylesheet" href="css/magnific.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="css/responsive.css">

    <!-- jquery latest version -->
		<script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- modernizr css -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <script type="text/javascript" >
        $(document).ready(function () { 
            $("#ViewTicket").hide();  
            $("#ViewUsers").hide(); 
            $("#TicketPrice,#PriceAmount").on("keypress keyup", function (event) {               
                $(this).val($(this).val().replace(/[^0-9\.+]/, ''));
                if ((event.which < 48 || event.which > 57)) {
                    event.preventDefault();
                }
            }); 
             
            $("#View").click(function () {
                $("#AddTicket").hide();
                $("#ViewUsers").hide();
                $("#ViewTicket").show();
            });
            $("#Add").click(function () {
                $("#ViewTicket").hide();
                $("#ViewUsers").hide();
                $("#AddTicket").show();
            });
            $("#UsersView").click(function () {
                $("#ViewTicket").hide();
                $("#AddTicket").hide(); 
                $("#ViewUsers").show();
            });
        });
    </script>    
    
</head>
<body>
     <form id="form1" runat="server" autocomplete="off" class="log-form" >
    <header>
         <div id="sticker" class="header-area header-area-2 hidden-xs">
                <div class="container">
                    <div class="row">
                        <!-- logo start -->
                        <div class="col-md-3 col-sm-3">
                            <div class="logo">
                                <!-- Brand -->
                                <a class="navbar-brand " href="Home.aspx">
                                    <img src="img/logo/logo2.png" alt=""/>
                                </a>
                            </div>
                            <!-- logo end -->
                        </div>
                        <div class="col-md-9 col-sm-9">
                            <div class="header-right-link">
                                <!-- search option end -->
                               
                                 <asp:Button ID="BtnLogout" runat="server" class="ticket-btn" Text="Logout" OnClick="BtnLogout_Click"   ></asp:Button>
                               
                                <%--<asp:LinkButton runat="server" id="Logout" CssClass="s-menu" onclick="BtnLogout_Click" >Logout</asp:LinkButton>--%>
								<%--<a class="s-menu"  href="#" >Logout</a>--%>
                            </div>
                            <!-- mainmenu start -->
                            <nav class="navbar navbar-default">
                                <div class="collapse navbar-collapse" id="navbar-example">
                                    <div class="main-menu">
                                        <ul class="nav navbar-nav navbar-right">
                                            <%--<li><a class="pagess" href="#">Home</a>
                                               
                                            </li>--%>
                                            
                                         <%--   <li><a class="pagess" href="#">Games</a>
                                                <ul class="sub-menu">
                                                    <li><a href="#">All Games</a></li>
                                                    <li><a href="#">Games Details</a></li>
                                                </ul>
                                            </li>                       --%>                     
                                            <li><a class="pagess" href="#">Lottery</a>
                                                <ul class="sub-menu">
                                                   <li><a id="Add" runat="server" href="#">Add Ticket</a></li>
                                                    <li><a id="View" runat="server" href="#">view</a></li>
                                                    
                                                </ul>
                                            </li>
                                            <li><a class="pagess" href="#">User</a>
                                                <ul class="sub-menu">
                                                    <li><a id="UsersView" runat="server" href="#">view</a></li>
                                                    
                                                </ul>
                                            </li>
                                           <%-- <li><a class="pagess" href="#">Blog</a>
                                                <ul class="sub-menu">
                                                    <li><a href="blog.html">Blog grid</a></li>
                                                    <li><a href="blog-sidebar.html">Blog Sidebar</a></li>
                                                    <li><a href="blog-details.html">Blog Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html">contacts</a></li>--%>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            <!-- mainmenu end -->
                        </div>
                    </div>
                </div>
            </div>                                       
          
                 <%--<div class="login-area area-padding fix">--%>
                <div id="AddTicket" style="padding: 100px 0px;position: relative;">
          <div class="login-overlay"></div>
            <div class="table">
                <div class="table-cell">
                    <div class="container">
                        <div class="row">
                            <div  class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">
                                <div class="login-form">
                                    <h4 class="login-title text-center">Add Ticket</h4>
                                    <div class="row">
                                        <%--<form id="contactForm" runat="server" class="log-form">--%>
                                            <div class="col-md-12 col-sm-12 col-xs-12">                                               
                                                <input type="text" id="TicketNo" runat="server" class="form-control" placeholder="Ticket No" required="required" autocomplete="off"  data-error-messsage="Please enter ticket no"/>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                 
                                                <input type="text" id="TicketPrice" runat="server" class="form-control" placeholder="Ticket Price" autocomplete="off" required="required" maxlength="8"  data-error="Please enter ticket price"/>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                 
                                                <input type="text" id="PriceAmount" runat="server" class="form-control" placeholder="PriceAmount" autocomplete="off" required="required" maxlength="8"  data-error="Please enter price amount"/>
                                            </div>
                                               <div class="col-md-12 col-sm-12 col-xs-12">
                                                    <%--<asp:TextBox ID="CloseDate" runat="server" TextMode="Date" CssClass="form-control" required="true"></asp:TextBox>---%>
                                                 
                                                <input type="date" id="CloseDate" runat="server" class="form-control" placeholder="PriceAmount" autocomplete="off" required="required"  data-error="Please enter price amount"/>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                 
                                                  <%--<asp:TextBox ID="DrawDate" runat="server" TextMode="Date" CssClass="form-control" required="true"></asp:TextBox>---%>
                                                <input type="date" id="DrawDate" runat="server" class="form-control" placeholder="PriceAmount" autocomplete="off" required="required"  data-error="Please enter price amount"/>
                                            </div>
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                  <asp:DropDownList ID="Status" runat="server" CssClass="form-control" required="true">
                                                     <asp:ListItem>Open</asp:ListItem>
                                                     <asp:ListItem>Close</asp:ListItem>
                                                     </asp:DropDownList>
                                            </div>
                                            
                                            <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                                <%--<asp:Button ID="BtnAddTicket" runat="server"  Text="Add" CssClass="slide-btn login-btn" OnClick="BtnAddTicket_Click" />--%>
                                                 
                                                <button type="submit" runat="server" id="submit" class="slide-btn login-btn">Login</button>-
                                                <div id="msgSubmit" class="h3 text-center hidden"></div> 
                                                <div class="clearfix"></div>
                                            </div>                                            
                                      <%--</form>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>
                </div>
                </div>
        </div>

                    <div id="ViewTicket" style="padding: 100px 0px;position: relative;">
          <div class="login-overlay"></div>
            <div class="table">
                <div class="table-cell">
                    <div class="container">
                        <div class="row">
                            <div  class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">
                                <%--<div class="login-form">--%>
                                    <h4 class="login-title text-center">Tickets</h4>
                                    <div class="row">
                                       
                         
                <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False"  ViewStateMode="Enabled"  CssClass="table table-borderless" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                 <asp:TemplateField HeaderText="Ticket No"> 
            
                          
                            <ItemTemplate>  
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("TicketNo") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                 <asp:TemplateField HeaderText="Ticket Price"> 
            
                          
                            <ItemTemplate>  
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("TicketPrice") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                <asp:TemplateField HeaderText="Price Amount"> 
            
                          
                            <ItemTemplate>  
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("PriceAmount") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="Display Data"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("DisplayDate","{0:dd/MM/yyyy}") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                <asp:TemplateField HeaderText="Close Data"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("CloseDate","{0:dd/MM/yyyy}") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="Draw Data"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("DrawDate","{0:dd/MM/yyyy}") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="Status"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Status") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>                    
               
                 
            </Columns>

            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>              
                                    <%--</div>--%>
                                </div>
                            </div>
                        </div>
                     </div>
                </div>
                </div>
        </div>

        <div id="ViewUsers" style="padding: 100px 0px;position: relative;">
          <div class="login-overlay"></div>
            <div class="table">
                <div class="table-cell">
                    <div class="container">
                        <div class="row">
                            <div  class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">
                                <%--<div class="login-form">--%>
                                    <h4 class="login-title text-center">Users List</h4>
                                    <div class="row">                                       
                         
                <asp:GridView ID="GridView2" runat="server"  AutoGenerateColumns="False"  ViewStateMode="Enabled"  CssClass="table table-borderless" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                 <asp:TemplateField HeaderText="Fisrt Name"> 
            
                          
                            <ItemTemplate>  
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("FirstName") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                 <asp:TemplateField HeaderText="Last Name"> 
            
                          
                            <ItemTemplate>  
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("LastName") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                <asp:TemplateField HeaderText="PhoneNumber">             
                          
                            <ItemTemplate>  
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("PhoneNumber") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="Email"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                <asp:TemplateField HeaderText="Password"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Password") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="DateOfBirth"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("DateOfBirth","{0:dd/MM/yyyy}") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="Nationality"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Nationality") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>      
                 <asp:TemplateField HeaderText="IDType"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("IDType") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>    
                 <asp:TemplateField HeaderText="IdNo"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("IdNo") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>    
                 <asp:TemplateField HeaderText="Address"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Address") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>    
                 <asp:TemplateField HeaderText="State"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("State") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>   
                 <asp:TemplateField HeaderText="City"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("City") %>' >
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>    
                 <asp:TemplateField HeaderText="Code">                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Code") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>   
               
                 
            </Columns>

            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>              
                                    <%--</div>--%>
                                </div>
                            </div>
                        </div>
                     </div>
                </div>
                </div>
        </div>

               
           
           
     </header>
   
      
    </form>
    <!-- all js here -->

		
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
