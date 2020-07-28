﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserLottery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
               
                if (string.IsNullOrEmpty(Session["UserId"] as string))
                {
                    Response.Redirect("Login.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();

                }
                else
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
                Response.Redirect("UserCart.aspx", false);
                Context.ApplicationInstance.CompleteRequest();           
            
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}