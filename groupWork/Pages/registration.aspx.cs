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
        if (username.Text!=""&&password1.Text!=""&&password2.Text!="" && password1.Text == password2.Text)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["videosConnectionString"].ConnectionString))
            {
                conn.Open();
                string sql1 = "select count(*) from users where username=@username";
                string sql2 = "insert into users(username,password) values(@username,@password)";
                using (SqlCommand cmd = new SqlCommand(sql1, conn))
                {
                    cmd.Parameters.AddWithValue("@username", username.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", password1.Text.Trim());
                    // 执行查询并检查用户名是否已存在
                    if (Convert.ToInt32(cmd.ExecuteScalar())>0)
                    {
                        Response.Write("<script>alert('用户名已存在')</script>");
                    }
                    else
                    {
                        cmd.CommandText = sql2;
                        cmd.ExecuteNonQuery();
                        Response.Write("<script>alert('注册成功')</script>");

                    }
                }
            }
        }

    }
}