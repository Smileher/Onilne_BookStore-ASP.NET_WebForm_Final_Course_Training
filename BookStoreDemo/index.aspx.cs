using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class index : System.Web.UI.Page
{
    string struser; 
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Session["userok"] = "0";
        try
        {
            
            if (Session["url"].ToString()=="denglu")
            {
                Session["userok"] = "1";                
            }
        }
        catch
        {

        }       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("xiugaimima.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["url"] = "";
        Response.Redirect("index.aspx");
    }
    protected void btt_ss_Click(object sender, EventArgs e)
    {
        string strss = txt_ss.Text;
        string id = txt_ss.Text;

        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ConnectionString;
        SqlCommand cmd=new SqlCommand();
        cmd.Connection=conn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = @"SELECT * FROM [books]";
        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read() == true)
        {
            if(reader["bookName"].ToString()==strss || reader["author"].ToString()==strss)
            {
                id=reader["bookID"].ToString();
            }
        }
        Response.Redirect("dg.aspx?bookids="+id+"");
        conn.Close();
    }
}