<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="UserAccount.aspx.cs" Inherits="UserAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- Start Slider Area -->
    
         <div class="contact-area bg-color-2 area-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="section-headline text-center">
                            <h3>Personal Information</h3>
                            
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="contact-inner">
                        <div class="col-md-2 col-sm-2 col-xs-12"></div>
                        <!-- End contact icon -->
                        <div class="col-md-8 col-sm-8 col-xs-12">
                            <div class="contact-form">
                                <div class="row" style="color:white" >
                                  
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="FirstName" runat="server" class="form-control" />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="LastName" runat="server" class="form-control" placeholder="Lastname" maxlength="30" required="required" autocomplete="off" data-error="Please enter your name" />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="PhoneNumber" runat="server" class="form-control" placeholder="Phone number" maxlength="10" required="required" autocomplete="off" data-error="Please enter your name" />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="email" id="Email" runat="server" class="form-control" placeholder="Your Email" maxlength="30" required="required" autocomplete="off" data-error="Please enter your name" />
                                        </div>
                                        <%--<div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="password" id="Password" runat="server" class="form-control" placeholder="Password" maxlength="20" required="required" autocomplete="off" data-error="Please enter your message subject" />
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <input type="date" id="DOB" runat="server" class="form-control" required="required" max="2002-01-01" />
                                        </div>--%>
                                       <%-- <div class="col-md-12 col-sm-12 col-xs-12">
                                            <asp:DropDownList ID="Country" runat="server" CssClass="form-control" required="true">
                                                <asp:ListItem Selected="False">--Select Country--</asp:ListItem>
                                                <asp:ListItem>India</asp:ListItem>
                                                <asp:ListItem>Qatar</asp:ListItem>
                                                
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <select id="IDType" runat="server" class="form-control" >
                                                <option>--Selct ID--</option>
                                                <option value="Passport">Passport</option>
                                                <option value="Driving Licence">Driving Licence</option>
                                               
                                            </select>
                                        </div>--%>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="IDNo" runat="server" class="form-control" placeholder="ID No" required="required" data-error="Please enter your message subject" />
                                        </div>
                                         <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="Address" runat="server" class="form-control" placeholder="Address" required="required" data-error="Please enter your message subject" />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="State" runat="server" class="form-control" placeholder="State" required="required" data-error="Please enter your message subject"  />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                             <input type="text" id="City" runat="server" class="form-control" placeholder="City" required="required" data-error="Please enter your message subject"  />
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" id="Code" runat="server" class="form-control" placeholder="Code" required="required" maxlength="7" data-error="Please enter your message subject" />
                                        </div>
                                       
                                        <div class="col-md-6 col-sm-6 col-xs-12 text-center">
                                             <%--<asp:Button ID="BtnSignup" runat="server" Text="Signup" CssClass="slide-btn login-btn" OnClick="BtnSignup_Click"  />--%>
                                            <%--<button type="submit" id="submit" runat="server" class="slide-btn login-btn">Signup</button>--%>
                                            <div id="msgSubmit" class="h3 text-center hidden"></div>
                                            <div class="clearfix"></div>
                                        </div>
                                       
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-12"></div>
                        <!-- End contact Form -->
                    </div>
                </div>
            </div>
        </div>
  
</asp:Content>

