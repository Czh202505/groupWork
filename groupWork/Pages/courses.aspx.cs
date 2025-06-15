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
        int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex; //获取行的索引
        int id = (int)GridView1.DataKeys[row].Value;    //获取主键值ID
        HttpCookie cookie1 = new HttpCookie("mycookie");    //使用cookie传递获取到的ID值
        cookie1.Value = id.ToString();
        cookie1.Expires=DateTime.Now.AddMinutes(2);
        Response.Cookies.Add(cookie1);        
        Response.Redirect("videoPage.aspx");    //跳转到视频页面

    }
}