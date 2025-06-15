using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // 检查用户名和密码是否为空
        if (username.Text.Trim().Length > 0 && password.Text.Trim().Length > 0)
        {
            // 使用配置文件中的连接字符串连接到数据库
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["videosConnectionString"].ConnectionString))
            {
                conn.Open();
                string sql = "select count(*) from users where username=@username and password=@password";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@username", username.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", password.Text.Trim());
                    // 执行查询并检查用户是否存在
                    if (Convert.ToInt32( cmd.ExecuteScalar())>0)
                    {

                        HttpCookie cookie2 = new HttpCookie("mycookie2");
                        //使用cookie传递用户名和密码
                        cookie2.Values["username"] = username.Text;
                        cookie2.Values["password"] = password.Text;
                        Response.Cookies.Add(cookie2);
                        Session["login"] = "true"; // 使用Session来标记登录状态

                        Response.Redirect("homePage.aspx");

                    }
                    else
                    {
                        Response.Write("<script>alert('用户不存在');</script>");
                    }
                }
            }
        }
        else
        {
            Response.Write("<script>alert('用户名或密码不能为空');</script>");
        }
    }
}