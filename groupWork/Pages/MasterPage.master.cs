using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["login"] == null)   //检查登录状态
            {
                return; // 如果没有session，直接返回
            }
            else if (Session["login"].ToString() == "true")
            {
                // 用户已登录，显示信息
                username.Visible = true;
                username.Text = Request.Cookies["mycookie2"]["username"];
                Label1.Visible = false;
                logOutBt.Visible = true; // 显示退出登录按钮
                logOutBt.Text = "退出登录";
            }
        }

    }

    protected void logOutBt_Click(object sender, EventArgs e)
    {
        username.Visible = false;
        Label1.Visible = true;
        logOutBt.Visible = false;

        Session.Clear();

    }
}
