<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homePage.aspx.cs" Inherits="homePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>    
    <title>太极之道 - 杨氏24式太极拳学习平台</title>
    <link href="../style/homePage.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <!-- 导航栏 -->
    <nav class="navbar">
        <a href="#" class="logo">太极之道</a>
        <div class="nav-links">
            <a href="courses.aspx">课程体系</a>
            <a href="#community">太极社区</a>
            <a href="#profile">个人中心</a>
        </div>
    </nav>
    <hr />

    <!-- 首页 -->
    <section class="hero" style="background-image: url('http://localhost:56281/picture/1120.jpg')">
        <div class="hero-content" >
            <h1 style="font-weight: bold">传承百年 · 太极新生</h1>
            <p class="shadow_a">杨氏24式太极拳数字化教学平台</p>
            <br /><br />
            <a href="courses.aspx" class="cta-button">立即开始学习</a>
        </div>
    </section>

    <!-- 核心功能展示 -->
    <section class="features">
        <div class="features-grid">
            <div class="feature-card">
                <img src="../picture/视频icon.svg" alt="视频教学"/>
                <h3>高清视频教学</h3>
                <p>专业师范动作分解，多角度慢动作演示</p>
            </div>
            <div class="feature-card">
                <img src="../picture/进度icon.svg" alt="学习进度"/>
                <h3>智能学习追踪</h3>
                <p>实时记录，给出个性化学习建议</p>
            </div>
            <div class="feature-card">
                <img src="../picture/社区.svg" alt="社区互动"/>
                <h3>太极交流社区</h3>
                <p>与全球爱好者分享练习心得</p>
            </div>
        </div>
    </section>

    <!-- 学习进度 -->
<%--    <section class="progress-section">
        <h2>您的太极精进之路</h2>
        <div class="progress-ring" style="color: #000000">65%</div>
        <p>已掌握15/24个标准动作</p>
        <br /><br />
        <a href="courses.aspx" class="cta-button">继续学习</a>
    </section>--%>

    <!-- 页脚 -->
    <footer>
        <p>© 2025 太极之道 传承中华传统文化</p>
    </footer>
</body>
</html>
