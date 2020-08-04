<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<div id="AddTicket" style="padding: 100px 0px;position: relative;">
          <div class="login-overlay"></div>
            <div class="table">
                <div class="table-cell">
                    <div class="container">
                        <div class="row">
                            <div  class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">
                                <div class="login-form">
                                    <h4 class="login-title text-center">DASHBOARD</h4>
                                    <div class="row">                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>
                </div>
                </div>
        </div>--%>
    <div class="achivement-area bg-color area-padding-2">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="section-headline text-center">
                        <h3>DASHBOARD</h3>
                        
                    </div>
                </div>
            </div>
           <div class="row">
                <div class="achivement-content">
                    <div class="col-md-2 col-sm-2 col-xs-12"></div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="single-achive first-achive">
                            <h6>Ongoing Ticket No:</h6>
                            <label id="CurrentNo" runat="server">      </label>       

                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="single-achive first-achive">
                            <h6>Total No of Users:</h6>
                             <label id="TotalUsersCount" runat="server">      </label>    
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-2 col-xs-12"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

