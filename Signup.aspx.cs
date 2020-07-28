using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signup : System.Web.UI.Page
{
    LotteryWebService.DBService lws;
    MailService.Mail ms;
    MailService.WebServiceResponse wsr;
    LotteryWebService.WebServiceResponse wsr1;

    protected void Page_Load(object sender, EventArgs e)
    {
        lws = new LotteryWebService.DBService();
        ms = new MailService.Mail();
        wsr = new MailService.WebServiceResponse();
        wsr1 =new  LotteryWebService.WebServiceResponse();
    }



    
    protected void BtnSignup_Click(object sender, EventArgs e)
    {
        try
        {
            wsr1 = lws.InsertUserInfo(FirstName.Value.Trim(), LastName.Value.Trim(), PhoneNumber.Value, Email.Value.Trim(), Password.Value.Trim(), DOB.Value.Trim(), Country.SelectedItem.Value.Trim(), IDType.Items[IDType.SelectedIndex].Text.Trim(), IDNo.Value.Trim(), Address.Value.Trim(), State.Value.Trim(), City.Value.Trim(), Code.Value.Trim());
            if(wsr1.Result=="1")
            {
                wsr = ms.SendActivationEmail(Email.Value.Trim(), FirstName.Value.Trim(), HttpContext.Current.Request.Url.AbsoluteUri, Password.Value.Trim());
                if (wsr.Result == "1")
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Registration  Success. Activation Link sent to your Registered Email ');", true);
                    Response.Redirect("Home.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
                else
                {

                }
            }
            else
            {

            }
                
            
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}