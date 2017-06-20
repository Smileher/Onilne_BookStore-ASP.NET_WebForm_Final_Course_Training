using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gerenzhongxin : System.Web.UI.Page
{
    string struser; 
    protected void Page_Load(object sender, EventArgs e)
    {
        struser = Request["user"].ToString();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["url"] = "";
        Response.Redirect("index.aspx");
    }
}