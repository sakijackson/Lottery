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
    LotteryWebService.DBService dbService;
    LotteryWebService.UserInfo ui;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            dbService = new LotteryWebService.DBService();             
            GetTicketInfo();
            GetUsersInfo();
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }

    }

    protected void BtnAddTicket_Click(object sender, EventArgs e)
    {
        LotteryWebService.DBService lws = new LotteryWebService.DBService();
        LotteryWebService.WebServiceResponse wsr = new LotteryWebService.WebServiceResponse();
        try
        {
            wsr = lws.InsertTicketInfo(TicketNo.Value.Trim(), int.Parse(TicketPrice.Value.Trim()), int.Parse(PriceAmount.Value.Trim()), DateTime.Parse(DateTime.Now.ToString("yyy-MM-dd")), DateTime.Parse(CloseDate.Value), DateTime.Parse(DrawDate.Value), Status.SelectedItem.Text);


            if (wsr.Result=="1")
            {
                Response.Redirect("Admin.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error+ "');", true);
            }

        }

        catch (Exception ex)
        {
            //string message = string.Format("Message: {0}", ex.Message);
           // int st = message.IndexOf("System.Exception:");
           // int en = message.IndexOf(".\n");
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);          
        }
        
       
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
    public void GetUsersInfo()
    {
        try
        {
            ui = new LotteryWebService.UserInfo();
            DataSet ds = dbService.GetUsersInfo();
            if (ds.Tables["Response"].Rows[0]["Status"].ToString()=="1")
            {
                GridView2.DataSource = ds.Tables["UsersInfo"];
                GridView2.DataBind();
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ds.Tables["Response"].Rows[0]["Error"].ToString() + "');", true);
            }
           


        }
        catch(Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
    public void GetTransactionsInfo()
    {
        try
        {
            ui = new LotteryWebService.UserInfo();
            DataSet ds = dbService.GetUsersInfo();
            if (ds.Tables["Response"].Rows[0]["Status"].ToString() == "1")
            {
                GridView2.DataSource = ds.Tables["UsersInfo"];
                GridView2.DataBind();
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ds.Tables["Response"].Rows[0]["Error"].ToString() + "');", true);
            }



        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }

    protected void BtnLogout_Click(object sender, EventArgs e)
    {
        try
        {
           

                Response.Redirect("Home.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
           
          
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}