using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    LotteryWebService.DBService lws;
    LotteryWebService.WebServiceResponse wsr;
    protected void Page_Load(object sender, EventArgs e)
    {

        lws = new LotteryWebService.DBService();
        wsr = new LotteryWebService.WebServiceResponse();
    }


    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        try
        {                       
            wsr = lws.VerifyUserLogin(UserId.Value.Trim(), Password.Value.Trim());
            if (wsr.Result != "0")
            {
                Session["UserId"] = wsr.Result;
                Response.Redirect("UserHome.aspx", false);
                Context.ApplicationInstance.CompleteRequest();                

            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('UserId or Password is Invalid');", true);
            }
                     
                       
        }
        catch 
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error + "');", true);
            //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
    }
}