using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;

public partial class Login : System.Web.UI.Page
{
    SqlConnection SqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["LotteryDBCon"].ConnectionString);
    SqlCommand Sqlcmd;
    SqlDataReader sdr;
    String RandomOTP;
    LotteryWebService.DBService LWS = new LotteryWebService.DBService();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if(IsPostBack)
            {
                string absoluteurl = HttpContext.Current.Request.Url.AbsoluteUri;
                int len = absoluteurl.Length;

                string url = absoluteurl.Substring(len - 10, 10);
                if (url != "Login.aspx")
                {
                    Mail mail = new Mail();
                    if (mail.VerifyActivationEmail())
                    {
                        MultiView1.ActiveViewIndex = 2;
                    }
                }

                else
                {
                    MultiView1.ActiveViewIndex = 0;
                }
            }
            
                         

        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
        //string   Ciphertext= Encrypt("gokul9418");
        //   string PlainText = Decrypt(Ciphertext);
        //   UserId.Text = Ciphertext;
        //   Passwrd.Text = PlainText;
        // RandomOTP = GenerateRandomOTP(8);
    }

    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        try
        {                    

            string result = LWS.VerifyUserLogin(UserId.Text.Trim(), Password.Text.Trim());
            if (result != "invalid user")
            {
                Response.Redirect("Home.aspx", true);
                Context.ApplicationInstance.CompleteRequest();
                // MultiView1.ActiveViewIndex = 1;  

            }
            
            //SqlCon.Open();
            //Sqlcmd = new SqlCommand("Select FirstName,PhoneNumber From UsrInfo Where PhoneNumber='" + UserId.Text + "'and Password= '" + Passwrd.Text + "' ", SqlCon);
            //sdr = Sqlcmd.ExecuteReader();
            //if (sdr.Read())
            //{
            //    Session["UsrName"] = sdr.GetValue(0).ToString();
            //    Session["PhNo"] = sdr.GetValue(1).ToString();
            //    SqlCon.Close();
            //    Sqlcmd.Dispose();
            //    sdr.Close();
            //    Response.Redirect("", true);
            //}
            //else
            //{

            //}
        }
        catch (Exception ex)
        {
             ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message + "');", true);
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
       
        
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;

    }



    protected void BtnLogin1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx", false);
        Context.ApplicationInstance.CompleteRequest();
    }

    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            Mail mail = new Mail();
            if (LWS.InsertData(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, DropDownList1.Text, DropDownList2.Text, TextBox6.Text, TextBox7.Text, DropDownList3.Text, DropDownList4.Text, TextBox8.Text, TextBox9.Text) && mail.SendActivationEmail(TextBox3.Text, TextBox1.Text))
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Register Success. Activation Link sent to your Registered Email ');", true);
                Response.Redirect("Home.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
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
 