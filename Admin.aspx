<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

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
     <%--<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css" rel="stylesheet" type="text/css" />--%>
     <%--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>--%>
    <script type="text/javascript" >
        $(document).ready(function () {           
            $("#TicketPrice,#PriceAmount").on("keypress keyup", function (event) {               
                $(this).val($(this).val().replace(/[^0-9\.+]/, ''));
                if ((event.which < 48 || event.which > 57)) {
                    event.preventDefault();
                }
            });          
        //    $('[id*=GridView1]').footable();
            $("#ViewTicket").hide();   
            $("#View").click(function () {
                $("#AddTicket").hide();
                $("#ViewTicket").show();
            });
            $("#Add").click(function () {
                $("#ViewTicket").hide();
                $("#AddTicket").show();
           });
        });
    </script>    
    <title>Admin Home</title>  
</head>
<body>
     <form id="form1" runat="server" autocomplete="off">
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
                                      <li><a href="#">Ticket</a>
                                            <ul class="submenu">
                                                <li id="Add" runat="server"><a href="#">Add</a></li>
                                                <li id="View"><a href="#">View</a></li>
                                               
                                            </ul>
                                        </li>                                        
                                    </ul>
                                </nav>
                            </div>
                            <div class="header-right-btn f-right d-none d-lg-block ml-30">
                                <asp:Button ID="BtnLogout" runat="server" CssClass="btn btn-primary" Text="Logout" ></asp:Button>
                                <%--<a href="Login.aspx" class="btn header-btn">logout</a>--%>
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
   
        <asp:MultiView ID="MultiView1" runat="server">  
             
            <asp:View ID="Ticket" runat="server">
                  <div id="AddTicket" style="padding-left:30%;padding-right:30%;margin-top:10%">
                <div style="text-align:center">Add Ticket Details</div>
                 <table class="table-borderless" cellpadding="20" cellspacing="0" style="width:100%;">
               <tr>                  
                   <td >
                       Ticket No
                       <br />
                       <asp:TextBox ID="TicketNo" runat="server" CssClass="form-control" required="true" placeholder="Ticket No" ></asp:TextBox>
                   </td>                               
                   <td >
                       Ticket Price
                       <br/>
                       <asp:TextBox ID="TicketPrice" runat="server" CssClass="form-control" placeholder="Ticket Price" required="true" MaxLength="8" ></asp:TextBox>
                   </td>
               </tr>
                      <tr>                  
                   <td >
                       Price Amount
                       <br />
                       <asp:TextBox ID="PriceAmount" runat="server" CssClass="form-control" placeholder="PriceAmount" required="true" MaxLength="8" ></asp:TextBox>
               
                       </td>                               
                   <td >
                       Close Date
                       <br />
                       <asp:TextBox ID="CloseDate" runat="server" TextMode="Date" CssClass="form-control" required="true"></asp:TextBox>
                   </td>
               </tr>
                      <tr>                  
                   <td >
                       Draw Date
                       <br/>
                       <asp:TextBox ID="DrawDate" runat="server" TextMode="Date" CssClass="form-control" required="true"></asp:TextBox>
                   </td>                           
                   <td >
                       Status
                       <br />
                       <asp:DropDownList ID="Status" runat="server" CssClass="form-control" required="true">
                           <asp:ListItem>Open</asp:ListItem>
                           <asp:ListItem>Close</asp:ListItem>
                       </asp:DropDownList>            
                       
                   </td>
               </tr>                     
             
               <tr>
                   <td colspan="2" style="text-align:center">
                        <asp:Button ID="BtnAddTicket" runat="server"  Text="Add" CssClass="btn btn-primary" OnClick="BtnAddTicket_Click" />
                   </td>
               </tr>                     
           </table> 
                       </div>
                       <div id="ViewTicket" style="padding-left:25%;padding-right:23%;margin-top:10%">
                <div style="text-align:center">Ticket Details</div>
                           <div class="table-responsive" >
                         
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
      
               </div>
                       </div>
            </asp:View>
           
        </asp:MultiView>
    </form>
</body>
</html>
