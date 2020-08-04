using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    LotteryWebService.DBService lws;
    LotteryWebService.AdminInfo ai;
    protected void Page_Load(object sender, EventArgs e)
    {
        lws = new LotteryWebService.DBService();
        ai = new LotteryWebService.AdminInfo();
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            ai = lws.VerifyAdminLogin(UserId.Value.Trim(), Password.Value.Trim());
            if (ai.Status == "1")
            {
                Session["Name"] = ai.Name;
                Session["Type"]= ai.Type;
                Response.Redirect("AdminHome.aspx", false);
                Context.ApplicationInstance.CompleteRequest();

            }
            else if(ai.Status=="0")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ai.Error + "')", true);
            }


        }
        catch (Exception ex)
        {

            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
    }
}