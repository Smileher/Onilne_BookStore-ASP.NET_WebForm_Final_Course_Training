using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class xiugaixinxi : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userok"].ToString() == "0")
        {
            Response.Redirect("denglu.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
                
    }
    protected void comment_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "bj")            
        {
            Button btt_bj = (Button)e.Item.FindControl("btt_bj");
            TextBox txt_sex = (TextBox)e.Item.FindControl("txt_sex");
            TextBox txt_bir = (TextBox)e.Item.FindControl("txt_bir");
            TextBox txt_phone = (TextBox)e.Item.FindControl("txt_phone");
            if (btt_bj.Text.ToString() == "编    辑")
            {
                btt_bj.Text = "更    新";
                txt_sex.Enabled = true;
                txt_bir.Enabled = true;
                txt_phone.Enabled = true;
            }
            else
            {
                btt_bj.Text = "编    辑";
                txt_sex.Enabled = false;
                txt_bir.Enabled = false;
                txt_phone.Enabled = false;




                int i = 0;
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ToString();
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = string.Format("UPDATE  users SET sex='{0}',birthday='{1}',phoneNumber='{2}'  WHERE userName ='{3}'", txt_sex.Text, txt_bir.Text, txt_phone.Text, lab_user.Text);

                int var = cmd.ExecuteNonQuery();
                if (var > 0)
                {
                    Response.Write("<script>alert('修改数据成功!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('修改数据失败!')</script>");
                }
                conn.Close();
            }                                    
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["url"] = "";
        Response.Redirect("index.aspx");
    }
}