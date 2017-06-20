using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class gouwuche : System.Web.UI.Page
{
    string struser;
    string bookid;
    string strname;
    int have = 0;
    int n = 0;
    int idbh = 0;
    int strbookid;

    string userName;
    string bookName;
    string author;
    string publisher;
    string pubdate;
    string price;
    string picture;
    string memo;
    string categoryID="0";
    string promotionPrice;
    string promotion="0";
    string ifxd="0";

    protected void Page_Load(object sender, EventArgs e)
    {
        int ss = 1;
        
        if(Session["userok"].ToString()=="0")
        {
            Response.Redirect("denglu.aspx");
        }
        else
        {
            try
            {
                bookid = Request.QueryString["bookid"];
                struser = Session["user"].ToString();

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ConnectionString;

                //书本数据读取   
                SqlCommand cmd1 = new SqlCommand();
                cmd1.Connection = conn;
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = @"SELECT * FROM [books]";
                conn.Open();
                SqlDataReader reader = cmd1.ExecuteReader();
                while (reader.Read() == true)
                {
                    string strbookid1 = reader["bookID"].ToString();
                    if (strbookid1.Trim() == bookid)
                    {
                        userName = struser;
                        bookName = reader["bookName"].ToString();
                        author = reader["author"].ToString();
                        publisher = reader["publisher"].ToString();
                        pubdate = reader["pubdate"].ToString();
                        price = reader["price"].ToString();
                        picture = reader["picture"].ToString();
                        memo = reader["memo"].ToString();
                        categoryID = reader["categoryID"].ToString();
                        promotionPrice = reader["promotionPrice"].ToString();
                        promotion = reader["promotion"].ToString();
                        ss = 1;
                    }
                    if (ss == 0)
                    {
                        //Response.Write("<script>alert('信息读取失败!')</script>");
                    }
                }
                conn.Close();








                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = @"SELECT * FROM [dd]";

                conn.Open();
                SqlDataReader readerp = cmd.ExecuteReader();
                while (readerp.Read() == true)
                {
                    string strbookname = readerp["bookName"].ToString();
                    strname = readerp["userName"].ToString();
                    if ((strbookname.Trim() == bookName) && (strname.Trim() == struser))
                    {
                        have = 1;
                        n = int.Parse(readerp["number"].ToString());
                        strbookid = int.Parse(readerp["ID"].ToString());
                    }
                }
                conn.Close();

                if (have == 1)
                {
                    n++;
                    conn.Open();
                    SqlCommand cmd4 = new SqlCommand();
                    cmd4.Connection = conn;
                    cmd4.CommandType = CommandType.Text;
                    cmd4.CommandText = string.Format("UPDATE  dd SET number='{0}'  WHERE ID ='{1}'", n, strbookid);
                    int var = cmd4.ExecuteNonQuery();
                    if (var > 0)
                    {
                        // Response.Write("<script>alert('修改数据成功!')</script>");
                    }
                    else
                    {
                        // Response.Write("<script>alert('修改数据失败!')</script>");
                    }
                    conn.Close();
                }
                else
                {
                    SqlCommand cmd4 = new SqlCommand();
                    cmd4.Connection = conn;
                    cmd4.CommandType = CommandType.Text;
                    cmd4.CommandText = @"SELECT * FROM [dd]";
                    conn.Open();
                    SqlDataReader readerbh = cmd4.ExecuteReader();
                    while (readerbh.Read() == true)
                    {
                        idbh++;
                    }
                    conn.Close();                    



                    //书本信息加入购物车表                        
                    conn.Open();
                    SqlCommand cmd2 = new SqlCommand();
                    cmd2.Connection = conn;
                    cmd2.CommandType = CommandType.Text;
                    cmd2.CommandText = @"INSERT INTO dd(userName,bookName,author,publisher,pubdate,price,picture,memo,categoryID,promotionPrice,promotion,ifxd,number,ID)
                                             VALUES(@userName,@bookName,@author,@publisher,@pubdate,@price,@picture,@memo,@categoryID,@promotionPrice,@promotion,@ifxd,@number,@ID)";

                    cmd2.Parameters.Add("@userName", SqlDbType.VarChar).Value = struser;
                    cmd2.Parameters.Add("@bookName", SqlDbType.VarChar).Value = bookName;
                    cmd2.Parameters.Add("@author", SqlDbType.VarChar).Value = author;
                    cmd2.Parameters.Add("@publisher", SqlDbType.VarChar).Value = publisher;
                    cmd2.Parameters.Add("@pubdate", SqlDbType.VarChar).Value = pubdate;
                    cmd2.Parameters.Add("@price", SqlDbType.VarChar).Value = price;
                    cmd2.Parameters.Add("@picture", SqlDbType.VarChar).Value = picture;
                    cmd2.Parameters.Add("@memo", SqlDbType.VarChar).Value = memo;
                    cmd2.Parameters.Add("@categoryID", SqlDbType.Int).Value = int.Parse(categoryID);
                    cmd2.Parameters.Add("@promotionPrice", SqlDbType.VarChar).Value = promotionPrice;
                    cmd2.Parameters.Add("@promotion", SqlDbType.Int).Value = int.Parse(promotion);
                    cmd2.Parameters.Add("@ifxd", SqlDbType.Int).Value = int.Parse(ifxd);
                    cmd2.Parameters.Add("@number", SqlDbType.Int).Value = 1;
                    cmd2.Parameters.Add("@ID", SqlDbType.Int).Value = bookid;
                    cmd2.Parameters.Add("@xd", SqlDbType.Int).Value = 0;
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
            }
            catch
            {

            }            
        }                               

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["aspxmConnectionString"].ConnectionString;

            conn.Open();
            SqlCommand cmd5 = new SqlCommand();
            cmd5.Connection = conn;
            cmd5.CommandType = CommandType.Text;
            cmd5.CommandText = string.Format("UPDATE  dd SET ifxd='{0}',xd={1}", 1, 0);
            int var = cmd5.ExecuteNonQuery();
            if (var > 0)
            {
                // Response.Write("<script>alert('修改数据成功!')</script>");
            }
            else
            {
                // Response.Write("<script>alert('修改数据失败!')</script>");
            }
            conn.Close();

            Response.Redirect("dindan.aspx");
        }
        catch
        {

        }       
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["url"] = "";
        Response.Redirect("index.aspx");
    }
}