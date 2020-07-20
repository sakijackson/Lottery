using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Activation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailService.Mail ms = new MailService.Mail();
        string activationCode;
        try
        {
            if (!IsPostBack)
            {
                string absoluteurl = HttpContext.Current.Request.Url.AbsoluteUri;
                int len = absoluteurl.Length;

                string url = absoluteurl.Substring(len - 10, 10);
                if (url != "Login.aspx")
                {
                    if(!string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["ActivationCode"]))
                    {
                        activationCode = HttpContext.Current.Request.QueryString["ActivationCode"];
                        if (ms.verifyActivationEmail(activationCode))
                        {
                            Response.Redirect("Login.aspx", false);
                            Context.ApplicationInstance.CompleteRequest();
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Account Already Activated');", true);
                        }
                    }
                    else
                    {
                        Response.Redirect("Signup.aspx", false);
                        Context.ApplicationInstance.CompleteRequest();
                    }
                    
                }

                else
                {
                    Response.Redirect("Signup.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
            }



        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
    }
}