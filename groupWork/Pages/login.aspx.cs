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
        if (username.Text.Trim().Length > 0 && password.Text.Trim().Length > 0)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["videosConnectionString"].ConnectionString))
            {
                conn.Open();
                string sql = "select count(*) from users where username=@username and password=@password";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@username", username.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", password.Text.Trim());

                    if (Convert.ToInt32( cmd.ExecuteScalar())>0)
                    {

                        HttpCookie cookie2 = new HttpCookie("mycookie2");

                        cookie2.Values["username"] = username.Text;
                        cookie2.Values["password"] = password.Text;
                        Response.Cookies.Add(cookie2);
                        Session["login"] = "true"; // 使用Session来标记登录状态

                        Response.Redirect("homePage.aspx");

                    }
                    else
                    {
                        Response.Write("<script>alert('登录失败');</script>");
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