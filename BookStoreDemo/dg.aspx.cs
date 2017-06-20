using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class dg : System.Web.UI.Page
{
    string strbookid;
    string struser;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            strbookid = Request["bookids"].ToString();
            lab_bookid.Text = strbookid;
        }
        catch
        {

        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
    protected void btt_gw_Click(object sender, EventArgs e)
    {
        Response.Redirect("gouwuche.aspx?bookid="+strbookid+"");
    }
    protected void comment_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["url"] = "";
        Response.Redirect("index.aspx");
    }
}