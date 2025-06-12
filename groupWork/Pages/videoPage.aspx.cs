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
            string mystr;
            mystr = Request.Cookies["mycookie"].Value;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["videosConnectionString"].ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand("select name,path from videoDisplay where ID=@ID",conn);
            cmd.Parameters.AddWithValue("@ID", mystr);
            SqlDataReader reader=cmd.ExecuteReader();
            while (reader.Read())
            {
                Label1.Text = reader["name"].ToString();
                video1.Src = reader["path"].ToString();
            }
            conn.Close();
        }
    }
}