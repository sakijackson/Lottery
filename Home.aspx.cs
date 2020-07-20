using System;


public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserName"] != null)
        {
            log.InnerHtml = "Logout";
        }


    }
}
//LotteryWebService.DBService LWS = new LotteryWebService.DBService();
// string Count = LWS.GetTicketCount("1");
//if(Count!="No Ticket")
//{
//TicketCount.InnerText = Count + "/" + 10 ;
//}

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