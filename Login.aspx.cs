using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    LotteryWebService.DBService lws;
    protected void Page_Load(object sender, EventArgs e)
    {
        lws = new LotteryWebService.DBService();
       
    }



    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            
            string result = lws.verifyUserLogin(UserId.Value.Trim(), Password.Value.Trim());
            if (result != "invalid user")
            {
                Session["UserName"] = result;
                Response.Redirect("Home.aspx", false);
                Context.ApplicationInstance.CompleteRequest();                

            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('invalid UserName/Password');", true);
            }
                     
                       
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
    }
}