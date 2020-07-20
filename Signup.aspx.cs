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
    protected void Page_Load(object sender, EventArgs e)
    {
        lws = new LotteryWebService.DBService();
        ms = new MailService.Mail();
    }



    
    protected void BtnSignup_Click(object sender, EventArgs e)
    {
        try
        {
           
            if (lws.insertUserInfo(FirstName.Value.Trim(), LastName.Value.Trim(), PhoneNumber.Value, Email.Value.Trim(), Password.Value.Trim(),DOB.Value.Trim(), Country.SelectedItem.Value.Trim(), IDType.Items[IDType.SelectedIndex].Text.Trim(), IDNo.Value.Trim(), Address.Value.Trim(), State.Value.Trim(), City.Value.Trim(), Code.Value.Trim()) && ms.sendActivationEmail(Email.Value.Trim(),FirstName.Value.Trim(),HttpContext.Current.Request.Url.AbsoluteUri) )
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Registration  Success. Activation Link sent to your Registered Email ');", true);
                Response.Redirect("Home.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}