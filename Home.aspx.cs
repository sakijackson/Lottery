﻿using System;


public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if(!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["UserId"] as string))
                {
                    Response.Redirect("UserHome.aspx", false);
                    Context.ApplicationInstance.CompleteRequest();
                }
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }


    }
    protected void BtnLogin(object sender,EventArgs e)
    {
        try
        {
            //if (log.InnerHtml == "Logout")
            //{
            //    Session.Abandon();
            //}
            //else
            //{
            //    Response.Redirect("Login.aspx", false);
            //    Context.ApplicationInstance.CompleteRequest();
            //}
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    if (btnLogin.Text== "Signout")
        //    {
        //        Session.Abandon();  
        //        Session.RemoveAll();
        //        Response.Redirect("Home.aspx", false);
        //        Context.ApplicationInstance.CompleteRequest();
        //    }
        //    else
        //    {
        //        Response.Redirect("Login.aspx", false);
        //        Context.ApplicationInstance.CompleteRequest();
        //    }
        //}
        //catch (Exception ex)
        //{
        //    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        //}
    }
}


//TicketCount.InnerText = "hello";
// lblDate.Text = strValue;
//DateTime end = Convert.ToDateTime("2020/07/08 18:50:00");
//string enddate = "2020/07/08 18:24:00";if (Session["Us
//DateTime start = DateTime.Now;
//int res = DateTime.Compare(end, start);
//if(res>0)
//{
//    //string script = "window.onload = function() { Hide(); };";
//    //Page.ClientScript.RegisterStartupScript(this.GetType(), "Hide", script, true);
//    string script = "window.onload = function() { UpdateTime('2020/07/08 20:20:00'); };";
//    Page.ClientScript.RegisterStartupScript(this.GetType(), "UpdateTime", script, true);

//}
//else
//{
//    //string script = "window.onload = function() { UpdateTime('" + enddate + "'); };"
//    //Page.ClientScript.RegisterStartupScript(this.GetType(), "UpdateTime", script, true);
//    string script = "window.onload = function() { Hide(); };";
//    ScriptManager.RegisterStartupScript(this.Page,this.GetType(), "Hide", script, true);
//}

//  string script = "window.onload = function() { UpdateTime('" + time + "'); };";