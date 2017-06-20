using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class houtaiguanli : System.Web.UI.Page
{
    int newsID=0;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        labuser.Text = Session["gly"].ToString();
    }
    protected void btt_newqr_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ConnectionString;        
        conn.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.Connection = conn;
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = @"INSERT INTO news(ID,head,memo,fl) VALUES(@id,@head,@memo,@fl)";
        cmd1.Parameters.Add("@id", SqlDbType.Int).Value = int.Parse(txt_newbh.Text);
        cmd1.Parameters.Add("@head", SqlDbType.VarChar).Value = txt_newbj.Text;
        cmd1.Parameters.Add("@memo", SqlDbType.VarChar).Value = txt_newnr.Text;
        cmd1.Parameters.Add("@fl", SqlDbType.VarChar).Value = ddl_newbj.Text;       
        int var = cmd1.ExecuteNonQuery();        
        if (var > 0)
        {
            //Response.Write("<script>alert('添加数据成功!')</script>");
        }
        else
        {
            //Response.Write("<script>alert('添加数据失败!')</script>");
        }
        conn.Close();
    }
    protected void btt_newtj_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ConnectionString;  
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = @"SELECT * FROM [news]";
        conn.Open();
        SqlDataReader readerbh = cmd.ExecuteReader();
        while (readerbh.Read() == true)
        {
            newsID++;
        }
        conn.Close();        
        txt_newbh.Text = newsID.ToString();
        txt_newbj.Text = "";
        txt_newnr.Text = "";
        
        
    }

    protected void btt_sjqr_Click(object sender, EventArgs e)
    {
        int sjid = 0;
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = @"SELECT * FROM [books]";
        conn.Open();
        SqlDataReader readerbh = cmd.ExecuteReader();
        while (readerbh.Read() == true)
        {
            sjid++;
        }
        sjid++;
        conn.Close();


       
        conn.Open();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.Connection = conn;
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = @"INSERT INTO books(bookID,bookName,author,publisher,pubdate,price,memo,categoryID,old,promotion,promotionPrice,hot) 
                                    VALUES(@bookid,@bookname,@author,@publisher,@pubdate,@price,@memo,@categoryid,@old,@promotion,@promotionprice,@hot)";
        cmd2.Parameters.Add("@bookid", SqlDbType.Int).Value = sjid;
        cmd2.Parameters.Add("@bookname", SqlDbType.VarChar).Value = txt_sjname.Text;
        cmd2.Parameters.Add("@author", SqlDbType.VarChar).Value = txt_sjauthor.Text;
        cmd2.Parameters.Add("@publisher", SqlDbType.VarChar).Value = txt_sjcbs.Text;
        cmd2.Parameters.Add("@pubdate", SqlDbType.VarChar).Value =txt_sjcbrq.Text;
        cmd2.Parameters.Add("@price", SqlDbType.VarChar).Value = txt_sjjg.Text;
        cmd2.Parameters.Add("@picture", SqlDbType.VarChar).Value = txt_sjtp.Text;
        cmd2.Parameters.Add("@memo", SqlDbType.VarChar).Value = txt_sjnr.Text;
        cmd2.Parameters.Add("@categoryid", SqlDbType.Int).Value =int.Parse(txt_sjfl.Text);
        cmd2.Parameters.Add("@old", SqlDbType.Int).Value = 1;
        cmd2.Parameters.Add("@promotion", SqlDbType.Int).Value = 0;
        cmd2.Parameters.Add("@promotionprice", SqlDbType.VarChar).Value ="0.00";
        cmd2.Parameters.Add("@hot", SqlDbType.Int).Value = 1;
        int var = cmd2.ExecuteNonQuery();
        if (var > 0)
        {
            //Response.Write("<script>alert('添加数据成功!')</script>");
        }
        else
        {
            //Response.Write("<script>alert('添加数据失败!')</script>");
        }
        conn.Close();
    }

    protected void btt_sjtj_Click(object sender, EventArgs e)
    {

    }
    protected void btt_fltjqr_Click(object sender, EventArgs e)
    {
        int n = 0;
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ConnectionString;

        SqlCommand cmd4 = new SqlCommand();
        cmd4.Connection = conn;
        cmd4.CommandType = CommandType.Text;
        cmd4.CommandText = @"SELECT * FROM [category]";
        conn.Open();
        SqlDataReader readerbh = cmd4.ExecuteReader();
        while (readerbh.Read() == true)
        {
            n++;
        }
        n++;
        conn.Close();

        conn.Open();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.Connection = conn;
        cmd3.CommandType = CommandType.Text;
        cmd3.CommandText = @"INSERT INTO category(CategoryId,CategoryName) VALUES(@categoryid,@categoryname)";
        cmd3.Parameters.Add("@categoryid", SqlDbType.Int).Value = n;
        cmd3.Parameters.Add("@categoryname", SqlDbType.VarChar).Value = txt_fltj.Text;
        int var = cmd3.ExecuteNonQuery();
        if (var > 0)
        {
            Response.Write("<script>alert('添加数据成功!')</script>");
        }
        else
        {
            Response.Write("<script>alert('添加数据失败!')</script>");
        }
        conn.Close();
    }
    protected void btt_flbjqr_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ToString();
        conn.Open();
        SqlCommand cmd5 = new SqlCommand();
        cmd5.Connection = conn;
        cmd5.CommandType = CommandType.Text;
        cmd5.CommandText = string.Format("UPDATE  category SET CategoryName='{0}'  WHERE CategoryId ='{1}'", txt_flbjzl.Text, txt_flbjid.Text);
        int var = cmd5.ExecuteNonQuery();
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
    protected void btt_flscqr_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ToString();
        conn.Open();
        SqlCommand cmd6 = new SqlCommand();
        cmd6.Connection = conn;
        cmd6.CommandType = CommandType.Text;
        cmd6.CommandText = string.Format("DELETE FROM users WHERE CategoryId ='{0}'",txt_flscid.Text);
        int var = cmd6.ExecuteNonQuery();
        if (var > 0)
        {
            Response.Write("<script>alert('删除数据成功!')</script>");
        }
        else
        {
            Response.Write("<script>alert('删除数据失败!')</script>");
        }
        conn.Close();
    }
    protected void btt_yhscqx_Click(object sender, EventArgs e)
    {
        
    }
    protected void btt_yhbjqr_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ToString();
        conn.Open();
        SqlCommand cmd9 = new SqlCommand();
        cmd9.Connection = conn;
        cmd9.CommandType = CommandType.Text;
        cmd9.CommandText = string.Format("UPDATE  users SET userName='{0}',passWord='{1}',jurisdiction='{2}',sex='{3}',birthday='{4}',phoneNumber='{5}'  WHERE ID ='{6}'",
                                                               txt_yhbjnaem.Text, txt_yhbjpsw.Text, "0", txt_yhbjsex.Text, txt_yhbjday.Text, txt_yhbjphone.Text, txt_yhbjid.Text);
        int var = cmd9.ExecuteNonQuery();
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
    protected void btt_yhscqr_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ToString();
        conn.Open();
        SqlCommand cmd10 = new SqlCommand();
        cmd10.Connection = conn;
        cmd10.CommandType = CommandType.Text;
        cmd10.CommandText = string.Format("DELETE FROM users WHERE ID ='{0}'", txt_yhscid.Text);
        int var = cmd10.ExecuteNonQuery();
        if (var > 0)
        {
            Response.Write("<script>alert('删除数据成功!')</script>");
        }
        else
        {
            Response.Write("<script>alert('删除数据失败!')</script>");
        }
        conn.Close();
    }
    protected void btt_yhtjqr_Click(object sender, EventArgs e)
    {
        int n = 0;
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ConnectionString;

        SqlCommand cmd7 = new SqlCommand();
        cmd7.Connection = conn;
        cmd7.CommandType = CommandType.Text;
        cmd7.CommandText = @"SELECT * FROM [users]";
        conn.Open();
        SqlDataReader readerbh = cmd7.ExecuteReader();
        while (readerbh.Read() == true)
        {
            n++;
        }
        n++;
        conn.Close();

        conn.Open();
        SqlCommand cmd8 = new SqlCommand();
        cmd8.Connection = conn;
        cmd8.CommandType = CommandType.Text;
        cmd8.CommandText = @"INSERT INTO users(ID,userName,passWord,jurisdiction,sex,birthday,phoneNumber) 
                                         VALUES(@id,@username,@password,@jurisdiction,@sex,@birthday,@phonenumber)";
        cmd8.Parameters.Add("@id", SqlDbType.Int).Value = n;
        cmd8.Parameters.Add("@username", SqlDbType.VarChar).Value = txt_yhtjnaem.Text;
        cmd8.Parameters.Add("@password", SqlDbType.VarChar).Value = txt_yhtjpsw.Text;
        cmd8.Parameters.Add("@jurisdiction", SqlDbType.Int).Value = 0;
        cmd8.Parameters.Add("@sex", SqlDbType.VarChar).Value = txt_yhtjsex.Text;
        cmd8.Parameters.Add("@birthday", SqlDbType.VarChar).Value = txt_yhtjday.Text;
        cmd8.Parameters.Add("@phonenumber", SqlDbType.VarChar).Value = txt_yhtjphone.Text;
        int var = cmd8.ExecuteNonQuery();
        if (var > 0)
        {
            Response.Write("<script>alert('添加数据成功!')</script>");
        }
        else
        {
            Response.Write("<script>alert('添加数据失败!')</script>");
        }
        conn.Close();
    }
    protected void btt_glytjqr_Click(object sender, EventArgs e)
    {
        int n = 0;
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ConnectionString;

        SqlCommand cmd11 = new SqlCommand();
        cmd11.Connection = conn;
        cmd11.CommandType = CommandType.Text;
        cmd11.CommandText = @"SELECT * FROM [users]";
        conn.Open();
        SqlDataReader readerbh = cmd11.ExecuteReader();
        while (readerbh.Read() == true)
        {
            n++;
        }
        n++;
        conn.Close();

        conn.Open();
        SqlCommand cmd12 = new SqlCommand();
        cmd12.Connection = conn;
        cmd12.CommandType = CommandType.Text;
        cmd12.CommandText = @"INSERT INTO users(ID,userName,passWord,jurisdiction,sex,birthday,phoneNumber) 
                                         VALUES(@id,@username,@password,@jurisdiction,@sex,@birthday,@phonenumber)";
        cmd12.Parameters.Add("@id", SqlDbType.Int).Value = n;
        cmd12.Parameters.Add("@username", SqlDbType.VarChar).Value = txt_glytjname.Text;
        cmd12.Parameters.Add("@password", SqlDbType.VarChar).Value = txt_glytjpsw.Text;
        cmd12.Parameters.Add("@jurisdiction", SqlDbType.Int).Value = 1;
        cmd12.Parameters.Add("@sex", SqlDbType.VarChar).Value = "";
        cmd12.Parameters.Add("@birthday", SqlDbType.VarChar).Value = "";
        cmd12.Parameters.Add("@phonenumber", SqlDbType.VarChar).Value = "";
        int var = cmd12.ExecuteNonQuery();
        if (var > 0)
        {
            Response.Write("<script>alert('添加数据成功!')</script>");
        }
        else
        {
            Response.Write("<script>alert('添加数据失败!')</script>");
        }
        conn.Close();
    }
    protected void btt_glybjqr_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ToString();
        conn.Open();
        SqlCommand cmd13 = new SqlCommand();
        cmd13.Connection = conn;
        cmd13.CommandType = CommandType.Text;
        cmd13.CommandText = string.Format("UPDATE  users SET userName='{0}',passWord='{1}',jurisdiction='{2}',sex='{3}',birthday='{4}',phoneNumber='{5}'  WHERE ID ='{6}'",
                                                               txt_glybjname.Text, "", txt_glybjqx.Text, "", "", "", txt_glybjid.Text);
        int var = cmd13.ExecuteNonQuery();
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
    protected void btt_glytscqr_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ToString();
        conn.Open();
        SqlCommand cmd14 = new SqlCommand();
        cmd14.Connection = conn;
        cmd14.CommandType = CommandType.Text;
        cmd14.CommandText = string.Format("DELETE FROM users WHERE ID ='{0}'", txt_glyscid.Text);
        int var = cmd14.ExecuteNonQuery();
        if (var > 0)
        {
            Response.Write("<script>alert('删除数据成功!')</script>");
        }
        else
        {
            Response.Write("<script>alert('删除数据失败!')</script>");
        }
        conn.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["gly"] = "";
        Response.Redirect("guanliyuandenglu.aspx");
    }
}