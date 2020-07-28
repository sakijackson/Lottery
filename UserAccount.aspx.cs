using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["UserId"] as string))
                {

                    LotteryWebService.DBService lws = new LotteryWebService.DBService();
                    LotteryWebService.UserInfo ui = new LotteryWebService.UserInfo();

                    ui = lws.GetUserInfo(Session["UserId"].ToString());

                    if (ui.Status != 0)
                    {
                        FirstName.Value = ui.FirstName;
                        LastName.Value = ui.LastName;
                        PhoneNumber.Value = ui.PhoneNumber;
                        Email.Value = ui.Email;
                        IDNo.Value = ui.IdNo;
                        Address.Value = ui.Address;
                        State.Value = ui.State;
                        City.Value = ui.City;
                        Code.Value = ui.Code;

                    }
                }
                else
                {
                    Response.Redirect("Login.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }


            }

        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}