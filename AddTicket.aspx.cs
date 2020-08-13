﻿using System;
using System.Data;
using System.Text;


public partial class AddTicket : System.Web.UI.Page
{
    LotteryWebService.DBService db;
    DataSet Ticketsds;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["Name"] as string))
                {
                    db = new LotteryWebService.DBService();
                    Ticketsds = db.GetTicketsInfo();
                    if (Ticketsds.Tables["Response"].Rows[0][0].ToString() == "1")
                    {
                        DataTable dt = Ticketsds.Tables["TicketsInfo"];

                        StringBuilder sb = new StringBuilder();
                        //Table start.
                        sb.Append("<table>");

                        //Adding HeaderRow.
                        sb.Append("<tr>");
                        foreach (DataColumn column in dt.Columns)
                        {
                            sb.Append("<th>" + column.ColumnName + "</th>");
                        }
                        sb.Append("</tr>");


                        //Adding DataRow.
                        foreach (DataRow row in dt.Rows)
                        {
                            sb.Append("<tr>");
                            foreach (DataColumn column in dt.Columns)
                            {
                                sb.Append("<td>" + row[column.ColumnName].ToString() + "</td>");
                            }
                            sb.Append("</tr>");
                        }

                        //Table end.
                        //sb.Append("</table>");
                        //TicketsTable.Text = sb.ToString();


                    }
                    else if (Ticketsds.Tables["Response"].Rows[0][0].ToString() == "0")
                    {
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Ticketsds.Tables["Response"].Rows[0][1].ToString() + "');", true);
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