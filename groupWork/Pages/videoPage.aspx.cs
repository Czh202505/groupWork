using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class homePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string mysql1, mysql2, mystr;
            mystr = Request.Cookies["mycookie"].Value;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["videosConnectionString"].ToString());
            SqlCommand cmd = new SqlCommand();
            conn.Open();
            cmd.Parameters.AddWithValue("@ID", mystr);
            mysql1 = "select name from videoDisplay where ID=@ID";
            mysql2 = "select path from videoDisplay where ID=@ID";
            cmd.Connection = conn;
            cmd.CommandText = mysql1;
            Label1.Text = cmd.ExecuteScalar().ToString();
            cmd.CommandText= mysql2;
            video1.Src=cmd.ExecuteScalar().ToString();
            conn.Close();
        }
    }
}