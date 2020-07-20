using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Web.UI.WebControls;


public partial class Admin : System.Web.UI.Page
{
    SqlConnection SqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["LotteryDBCon"].ConnectionString);
    SqlCommand SqlCmd;
    SqlDataReader Sqldr;
    SqlDataAdapter Sqlda;
    String RandomOTP;
    StringBuilder htmlTable = new StringBuilder();
    LotteryWebService.DBService lws = new LotteryWebService.DBService();

    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;       
        GetTicketInfo();           
      
    }

    protected void BtnAddTicket_Click(object sender, EventArgs e)
    {
        try
        {
          
            //if (lws.InsertTicketInfo(TicketNo.Text.Trim(), int.Parse(TicketPrice.Text.Trim()), int.Parse(PriceAmount.Text.Trim()), DateTime.Parse(DateTime.Now.ToString("yyy-MM-dd")), DateTime.Parse(CloseDate.Text), DateTime.Parse(DrawDate.Text), Status.SelectedItem.Text))
            //{
            //    Response.Redirect("Admin.aspx", false);
            //    Context.ApplicationInstance.CompleteRequest();
            //}

        }



        catch (Exception ex)
        {

            //string message = string.Format("Message: {0}", ex.Message);
           // int st = message.IndexOf("System.Exception:");
           // int en = message.IndexOf(".\n");
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);          
        }
        
       
    }
   public void Clear()
    {
        TicketNo.Text = "";
        TicketPrice.Text = "";
        PriceAmount.Text = "";
       //foreach(var textbox in Page.Controls)
       // {
       //     if(textbox is TextBox)
       //     {
       //        ( (TextBox)textbox).Text = "";
       //     }
      
       // }
    }

    public void GetTicketInfo()
    {
        try
        {
            using (SqlCmd = new SqlCommand("SELECT TicketNo,TicketPrice,PriceAmount,DisplayDate,CloseDate,DrawDate,Status FROM TicketInfo", SqlCon))
            {
                using (Sqlda = new SqlDataAdapter(SqlCmd))
                {
                    DataTable dt = new DataTable();
                    Sqlda.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        dt.Dispose();
                        Sqlda.Dispose();
                        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
                    }                    
                }
                    
            }                
        }
        catch(Exception ex)
        {
            Response.Write("script<alert('"+ex.Message+"')</script>");
        }
    }
}