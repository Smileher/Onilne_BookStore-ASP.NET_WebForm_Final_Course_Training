using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class xiugaimima : System.Web.UI.Page
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
            int i = 0;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ToString();

            conn.Open();
            SqlCommand cmdp = new SqlCommand();
            cmdp.Connection = conn;
            cmdp.CommandType = CommandType.Text;
            cmdp.CommandText = string.Format("SELECT * FROM [users] WHERE userName='{0}'", lab_user.Text);
            SqlDataReader reader = cmdp.ExecuteReader();  //执行查询操作，返回SqlDataReader 对象                
            while (reader.Read() == true)
            {
                string strName = reader["passWord"].ToString();
                if (strName.Trim() == txt_user.Text)
                {
                    i = 1;
                    break;
                }
            }
            conn.Close();
            if (i == 1)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = string.Format("UPDATE  users SET passWord='{0}'  WHERE userName ='{1}'", txt_pasw.Text, lab_user.Text);

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
            else
            {
                Response.Write("<script>alert('旧密码不正确')</script>");
            }            
    }
    protected void comment_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Session["url"] = "";
        Response.Redirect("index.aspx");
    }
}