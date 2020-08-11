using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Store : System.Web.UI.Page
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

    protected void BtnAddStore_Click(object sender, EventArgs e)
    {
        LotteryWebService.DBService lws = new LotteryWebService.DBService();
        LotteryWebService.WebServiceResponse wsr = new LotteryWebService.WebServiceResponse();
        try
        {
            wsr = lws.InsertStoreInfo(StoreName.Value.Trim(), Address.Value.Trim(), Timing.Value.Trim());

            if (wsr.Status == "1")
            {
                Response.Redirect("Store.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
            }
            else if(wsr.Status=="0")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + wsr.Error + "');", true);
            }

        }

        catch (Exception ex)
        {
            
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.Replace("\'", " ") + "');", true);
        }
    }
}