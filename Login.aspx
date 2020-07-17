<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
   
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript" >
        $(document).ready(function () {
            $('[id$=TextBox1]').on("keypress keyup", function (event) {
                var key = event.keyCode;
                if (!((key == 8) || (key == 32) || (key == 46) || (key >= 97 && key <= 122) || (key >= 65 && key <= 90))) {
                    event.preventDefault();
                }
            });

        });
    </script>
    <asp:MultiView ID="MultiView1" runat="server">          
            <asp:View ID="ViewLogin"  runat="server" >
                   <div style="padding-left:40%;padding-right:40%;padding-top:6%;padding-bottom:6%">
                       <div style="border-radius: 25px;">
                         <div style="text-align:center">Login</div>         
                 <table  class="table-borderless" cellpadding="20" cellspacing="0" style="width:100%;text-align:center">
               <tr>
                  
                   <td >
                       <asp:TextBox ID="UserId" runat="server" CssClass="form-control" required="true" placeholder="UserName" ></asp:TextBox>
                   </td>
               </tr>
               <tr>
                  
                   <td >
                       <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password" required="true"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td >
               <asp:Button ID="BtnLogin" runat="server"  Text="Login"  CssClass="btn btn-primary" OnClick="BtnLogin_Click" />
                  
                   </td>
               </tr>
                     <tr>
                         <td >
                             <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="LinkButton1_Click" >New User? Register Here</asp:LinkButton>
                             
                         </td>
                                           </tr>
           </table>               
           </div>
                 </div>
            </asp:View>
            
            <asp:View ID="ViewRegister" runat="server">
                 <div style="padding-left:30%;padding-right:30%;margin-top:10%">
                <div style="text-align:center">Registration Info</div>
                 <table class="table-borderless" cellpadding="20" cellspacing="0" style="width:100%;text-align:center">
               <tr>                  
                   <td >
                       <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" required="true" placeholder="FirstName" ></asp:TextBox>
                   </td>                               
                   <td >
                       <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Last Name" required="true"></asp:TextBox>
                   </td>
               </tr>
                      <tr>                  
                   <td >
                       
                       <asp:TextBox ID="TextBox3" runat="server" TextMode="EMail" CssClass="form-control" placeholder="Email" required="true" onkeyup="ValidateEmailID(this);" ></asp:TextBox>
               
                       </td>                               
                   <td >
                       <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password" required="true"></asp:TextBox>
                   </td>
               </tr>
                      <tr>                  
                   <td >
                       <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" CssClass="form-control" required="true"></asp:TextBox>
                   </td>
                           
                   <td >
                       <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" required="true">
                           <asp:ListItem Selected="False" >--Select Country--</asp:ListItem>
                           <asp:ListItem>India</asp:ListItem>

                       </asp:DropDownList>                 
                       
                   </td>
               </tr>
                      <tr>                  
                   <td >
                       <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" required="true" >
                           <asp:ListItem Selected="False" >--Select ID--</asp:ListItem>
                            <asp:ListItem>Passport</asp:ListItem>
                            
                       </asp:DropDownList>
                   </td>
                         
                   <td >
                      <%-- <input id="id" class="form-control" required="true" placeholder="id no" maxlength="8" onblur="return check();" />--%>
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" required="true" placeholder="Id No" maxlength="8" ></asp:TextBox>
                   </td>
               </tr>
                     <tr>
                        
                                    
                   <td colspan="2 " >
                       <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="Address" required="true"></asp:TextBox>
                   </td>
               </tr>
                      <tr>                  
                   <td >
                       <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" required="true">
                            <asp:ListItem >--Select State--</asp:ListItem>
                             <asp:ListItem>Tamilnadu</asp:ListItem>
                             <asp:ListItem>kerala</asp:ListItem>
                       </asp:DropDownList>
                   </td>
                           
                   <td >
                       <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" required="true">
                           <asp:ListItem >--Select City--</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                             <asp:ListItem>Coimbatore</asp:ListItem>
                       </asp:DropDownList>
                   </td>
               </tr>
                    <tr>                  
                   <td >
                       <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" placeholder="Postal/Zip Code" required="true"></asp:TextBox>
                   </td>
                              
                   <td >
                       <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" placeholder="Phone Number" required="true" MaxLength="10"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td colspan="2">
               <asp:Button ID="BtnRegister" runat="server"  Text="Register" CssClass="btn btn-primary" OnClick="BtnRegister_Click"/>
                  
                   </td>
               </tr>

                     <tr>
                         <td colspan="2">
                             
                             <asp:LinkButton ID="LinkButton2" runat="server" BorderStyle="None" CssClass="btn btn-primary" OnClick="LinkButton2_Click" >Exiting User? Login </asp:LinkButton>
                         </td>
                                           </tr>
           </table>        
                     </div>
            </asp:View>
        <asp:View ID="ViewActivate"  runat="server" >
                   <div style="padding-left:40%;padding-right:40%;padding-top:6%;padding-bottom:6%">
                       <h4>You're Account Activated Sucessfully</h4>
                       <h2>Login to buy Ticket </h2>
                       <asp:Button ID="BtnLogin1" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="BtnLogin1_Click" />
                 </div>
            </asp:View>

        </asp:MultiView>
</asp:Content> 

