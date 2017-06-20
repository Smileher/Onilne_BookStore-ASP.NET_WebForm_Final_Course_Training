using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class guanliyuan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lab_usps.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = @"SELECT * FROM [users]";
        try
        {
            conn.Open();  //打开链接                
            SqlDataReader reader = cmd.ExecuteReader();  //执行查询操作，返回SqlDataReader 对象                
            while (reader.Read() == true)
            {
                string strName = reader["userName"].ToString();
                string strpsw = reader["passWord"].ToString();
                string strjur = reader["jurisdiction"].ToString();
                if (strName == txt_user.Text)
                {
                    if(strjur=="1")
                    {
                        if (strpsw == txt_pasw.Text)
                        {
                            Session["gly"] = txt_user.Text;
                            Response.Redirect("houtaiguanli.aspx?user=" + this.txt_user.Text);
                        }
                        else
                        {
                            lab_usps.Visible = true;
                        }
                    }
                    else
                    {
                        lab_usps.Text = "*您不是管理员，无权进入";
                        lab_usps.Visible = true;
                    }
                }
                else
                {
                    lab_usps.Visible = true;
                }
            }
            conn.Close();
        }
        catch (Exception ex)
        {
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}