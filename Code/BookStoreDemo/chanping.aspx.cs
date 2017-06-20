using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string struser;
    string bookid;
    protected void Page_Load(object sender, EventArgs e)
    {        
        try
        {
            struser = Request["user"].ToString();
            bookid = Request["bookid"].ToString();
            lab_user.Text = struser;
            lab_c.Text = bookid;
        }
        catch
        {

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
    }
    protected void lkb_1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        
    }
    protected void comment_ItemCommand(object source,DataListCommandEventArgs e)
    {
        if(e.CommandName=="xx")
        {
            int cmtid = int.Parse(e.CommandArgument.ToString());
            LinkButton bt = (LinkButton)e.Item.FindControl("xx");
            //bt.Text = "2";
            lab_c.Text = bt.Text;
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["url"] = "";
        Response.Redirect("index.aspx");
    }
}