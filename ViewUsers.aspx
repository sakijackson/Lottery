﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewUsers.aspx.cs" Inherits="ViewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="ViewUsers" style="padding: 100px 0px;position: relative;">
          <div class="login-overlay"></div>
            <div class="table" style="width:45%" >
                <div class="table-cell">
                    <div class="container">
                        <div class="row">
                            <div  class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-12">
                                <%--<div class="login-form">--%>
                                    <h4 class="login-title text-center">Users List</h4>
                                    <div class="row">                                       
                         
                <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False"  ViewStateMode="Enabled"  CssClass="table table-borderless" >
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
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("LastName") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                <asp:TemplateField HeaderText="Phone No">             
                          
                            <ItemTemplate>  
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("PhoneNumber") %>'>  
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
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Password") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="DOB"> 
                                       
                            <ItemTemplate>  
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("DateOfBirth","{0:dd/MM/yyyy}") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 

                <asp:TemplateField HeaderText="Nationality"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Nationality") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>      
                 <asp:TemplateField HeaderText="ID"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("IDType") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>    
                 <asp:TemplateField HeaderText="Id No"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("IdNo") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>    
                 <asp:TemplateField HeaderText="Address"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("Address") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>    
                 <asp:TemplateField HeaderText="State"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("State") %>'>
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>   
                 <asp:TemplateField HeaderText="City"> 
                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("City") %>' >
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>    
                 <asp:TemplateField HeaderText="Code">                                        
                           
                            <ItemTemplate>  
                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("Code") %>'>
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
</asp:Content>

