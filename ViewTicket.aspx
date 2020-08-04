<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ViewTicket.aspx.cs" Inherits="ViewTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
</asp:Content>

