﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddTicket : System.Web.UI.Page
{
    LotteryWebService.DBService dbService;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["Name"] as string))
                {

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
    protected void BtnAddTicket_Click(object sender, EventArgs e)
    {
        LotteryWebService.DBService lws = new LotteryWebService.DBService();
        LotteryWebService.WebServiceResponse wsr = new LotteryWebService.WebServiceResponse();
        try
        {
            wsr = lws.InsertTicketInfo(TicketNo.Value.Trim(), int.Parse(TicketPrice.Value.Trim()), int.Parse(PriceAmount.Value.Trim()), DateTime.Parse(DateTime.Now.ToString("yyy-MM-dd")), DateTime.Parse(CloseDate.Value), DateTime.Parse(DrawDate.Value), Status.SelectedItem.Text);
            if (wsr.Status == "1")
            {
                Response.Redirect("Admin.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else if(wsr.Status=="0")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error + "');", true);
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
}