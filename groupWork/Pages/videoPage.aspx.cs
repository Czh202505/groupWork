using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_videoPage1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string mystr;
            mystr = Request.Cookies["mycookie"].Value;  //读取cookie中的ID值
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["videosConnectionString"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("select name,path from videoDisplay where ID=@ID", conn);
            cmd.Parameters.AddWithValue("@ID", mystr);
            SqlDataReader reader = cmd.ExecuteReader();   //获取查询结果
            while (reader.Read())   //读取数据
            {
                Label1.Text = reader["name"].ToString();    //设置视频名称
                video1.Src = reader["path"].ToString(); //设置视频路径
            }
            conn.Close();
        }
        if (Session["login"] == null)
            Response.Redirect("login.aspx");


    }
}