<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>课程体系 - 杨氏24式太极拳学习平台</title>
    <link href="../style/courses.css" type="text/css" rel="stylesheet" />
    <link href="../style/homePage.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
        <!-- 导航栏（与首页一致） -->
        <nav class="navbar">
            <a href="homePage.aspx" class="logo">太极之道</a>
            <div class="nav-links">
                <a href="courses.aspx">课程体系</a>
                <a href="#community">太极社区</a>
                <a href="#profile">个人中心</a>
            </div>
        </nav>
        <hr />
        <div class="course-container">
            <h1 style="text-align: center">杨氏24式太极拳课程体系</h1>
        </div>
        <div class="course-list">
            <!-- 课程项示例 -->
            <div class="course-item">
                <div class="course-info">
                    <h3 class="course-title">第一式：起势</h3>
                    <div class="progress-line">
                        <div class="progress-fill"></div>
                    </div>
                </div>
                <div class="action-buttons">
                    <asp:Button ID="Button1" runat="server" Text="开始学习" CssClass="btn-primary"
                        OnClick="Button1_Click" />
                    <button class="btn btn-secondary">离线</button>
                </div>

            </div>

            <!-- 更多课程项 -->
            <div class="course-item">
                <div class="course-info">
                    <h3 class="course-title">第二式：左右野马分鬃</h3>
                    <div class="progress-line">
                        <div class="progress-fill" style="width: 30%"></div>
                    </div>
                </div>
                <div class="action-buttons">
                    <asp:Button ID="Button2" runat="server" Text="开始学习" CssClass="btn-primary"
                        OnClick="Button2_Click" />
                    <button class="btn btn-secondary">离线</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
