using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class zhuce : System.Web.UI.Page
{
    int num = 0;    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        btt_tj.Enabled = false;

        int i = 0;
        if (Request.QueryString["value"] != null)
        {
            string name = Request.QueryString["value"].ToString();
            //创建数据库链接
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ConnectionString;
            //创建命令对象
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = @"SELECT * FROM [users]";
            //执行命令
            try
            {
                conn.Open();  //打开链接                
                SqlDataReader reader = cmd.ExecuteReader();  //执行查询操作，返回SqlDataReader 对象                
                while (reader.Read() == true)
                {
                    string strName = reader["userName"].ToString();
                    if (strName.Trim() == name.Trim())
                    {
                        i = 0;
                        break;
                    }                                                                       
                    else           
                        i = 1;
                }
                if (name.Trim() == "您的账户名和登录名")
                {
                    i = 2;
                }
                if (i == 1)
                {
                    Response.Write("用户名可用");
                }
                else if(i==2)
                {
                    Response.Write("");
                }
                else
                {
                    Response.Write("*用户名已存在");
                }        
                
                conn.Close();
            }
            catch (Exception ex)
            {
            }
            Response.End();
        }
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if(cb_ok.Checked)
        {
            btt_tj.Enabled = true;
        }
        else
        {
            btt_tj.Enabled = false;
        }
    }

    protected void btt_tj_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ToString();  //连接数据库的字符串，一般写在webconfig里
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = @"INSERT INTO users(ID,userName,passWord,jurisdiction,sex,birthday,phoneNumber) VALUES(@ID,@userName,@passWord,@jurisdiction,@sex,@birthday,@phoneNumber)";
        cmd.Parameters.Add("@ID", SqlDbType.Int).Value = num++;
        cmd.Parameters.Add("@userName", SqlDbType.VarChar).Value = txt_user.Text;
        cmd.Parameters.Add("@passWord", SqlDbType.VarChar).Value = txt_pasw.Text;
        cmd.Parameters.Add("@jurisdiction", SqlDbType.Int).Value = 0;
        cmd.Parameters.Add("@sex", SqlDbType.VarChar).Value = "";
        cmd.Parameters.Add("@birthday", SqlDbType.DateTime).Value = "2016-01-01";
        cmd.Parameters.Add("@phoneNumber", SqlDbType.VarChar).Value = txt_phone.Text;
        
        int var = cmd.ExecuteNonQuery();
        if (var > 0)
        {
            Response.Write("<script>alert('添加数据成功!')</script>");
        }
        else
        {
            Response.Write("<script>alert('添加数据失败!')</script>");
        }
        conn.Close();   
                                  
        btt_tj.Enabled = true;
        Response.Redirect("denglu.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["url"] = "";
        Response.Redirect("index.aspx");
    }
}