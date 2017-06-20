using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;

public partial class Code : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strCode = CreateString(4);   //生成验证字符串
        Session["vcode"] = strCode;

        Bitmap bitmap = new Bitmap(60, 24);
        //画背景
        Random random = new Random();
        for (int i = 0; i < bitmap.Width; i++)
        {
            for (int j = 0; j < bitmap.Height; j++)
            {
                if (random.Next(100) < 90)
                    bitmap.SetPixel(i, j, Color.LightGray);
            }
        }
        //画字符串
        Graphics g = Graphics.FromImage(bitmap);  //从位图对象得到画布对象
        Font font = new Font("Times New Roman", 14, FontStyle.Bold);
        g.DrawString(strCode, font, Brushes.Red, 0, 0);

        //输出图像
        bitmap.Save(Response.OutputStream, ImageFormat.Gif);
    }
    string CreateString(int n)
    {
        string str = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        string strCode = "";
        Random rand = new Random();

        for (int i = 0; i < n; i++)
        {

            int k = rand.Next(36);
            strCode += str[k].ToString();
        }
        return strCode;
    }
}