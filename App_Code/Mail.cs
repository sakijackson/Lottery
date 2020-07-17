using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for Mail
/// </summary>
public class Mail
{
    LotteryWebService.DBService dBService;
    SqlConnection SqlCon;
    SqlCommand SqlCmd;
    SqlDataReader Sqldr;
    public Mail()
    {
        dBService = new LotteryWebService.DBService();
        SqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["LotteryDBCon"].ConnectionString);
        //
        // TODO: Add constructor logic here
        //
    }
    public bool SendActivationEmail(string EmailId, string Name)
    {
        try
        {
            SqlCon = new SqlConnection();
            string activationCode = Guid.NewGuid().ToString();
            using (MailMessage mm = new MailMessage("sakigokul97@gmail.com", EmailId))
            {
                mm.Subject = "Account Activation";
                string body = "Hello " + Name + ",";
                body += "<br /><br />Please click the following link to activate your account";
                body += "<br /><a href = '" + HttpContext.Current.Request.Url.AbsoluteUri.Replace("Login.aspx", "Login.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";
                //body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("Login.aspx", "Login.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";
                body += "<br /><br />Thanks";
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("sakigokul97@gmail.com", "(Sakilove2ani)");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LotteryDBCon"].ConnectionString))
            {
                SqlCmd = new SqlCommand("INSERT INTO UserActivation VALUES('" + EmailId + "','" + activationCode + "','0')", con);
                {
                    con.Open();
                    SqlCmd.ExecuteNonQuery();
                }
            }
            return true;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
            // return false;           
        }

    }
    public bool VerifyActivationEmail()
    {

        //string activationCode = !string.IsNullOrEmpty(Request.QueryString["ActivationCode"]) ? Request.QueryString["ActivationCode"] : Guid.Empty.ToString();
        string activationCode = !string.IsNullOrEmpty(HttpContext.Current.Request.QueryString["ActivationCode"]) ? HttpContext.Current.Request.QueryString["ActivationCode"] : Guid.Empty.ToString();
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LotteryDBCon"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT ActivationCode FROM UserActivation WHERE ActivationCode = '" + activationCode + "'", con))
            {
                con.Open();
                Sqldr = cmd.ExecuteReader();
                if (Sqldr.Read())
                {
                    Sqldr.Close();
                    using (SqlCmd = new SqlCommand("UPDATE UserActivation SET Status='1' WHERER ActivationCode='" + activationCode + "'")) ;
                    {
                        int rel = SqlCmd.ExecuteNonQuery();
                        if (rel == 1)
                        {
                            return true;
                        }
                    }


                }

                return false;

            }

        }

    }

}


