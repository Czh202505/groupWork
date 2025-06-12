using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class courses : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
        int id = (int)GridView1.DataKeys[row].Value;
        HttpCookie cookie1 = new HttpCookie("mycookie");
        cookie1.Value = id.ToString();
        cookie1.Expires=DateTime.Now.AddMinutes(1);
        Response.Cookies.Add(cookie1);        
        Response.Redirect("videoPage.aspx");

    }
}