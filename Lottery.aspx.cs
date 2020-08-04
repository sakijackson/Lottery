using System;

public partial class Lottery : System.Web.UI.Page
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
                    LotteryWebService.TicketInfo ti = new LotteryWebService.TicketInfo();

                    ti = lws.GetTicketInfo();

                    if (ti.Status != 0)
                    {
                        count.InnerText = ti.TicketCount.ToString() + "/" + 10;
                        TicketPrice.InnerHtml = ti.TicketPrice.ToString();
                        PriceAmount.InnerHtml = ti.PriceAmount.ToString();
                    }

                }
                else
                {
                    Response.Redirect("Home.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                    
                }
               
            }
            
        }
        catch (Exception ex)
        {
               ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
        
    }


    protected void BtnBuyTicket_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["UserId"] != null)
            {
                
                Response.Redirect("Cart.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else
            {
                Response.Redirect("Login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["UserId"] != null)
            {
                Session.Abandon();
                // Session.RemoveAll();
                Response.Redirect("Home.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else
            {
                Response.Redirect("Login.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}