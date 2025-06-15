<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="homePage.aspx.cs" Inherits="Pages_homePage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">

        <!-- 首页 -->
        <section class="hero" style="background-image: url('http://localhost:56281/picture/1120.jpg')">
            <div class="hero-content">
                <h1 style="font-weight: bold">传承百年 · 太极新生</h1>
                <p class="shadow_a">杨氏24式太极拳数字化教学平台</p>
                <br />
                <br />
                <a href="courses.aspx" class="cta-button">立即开始学习</a>
            </div>
        </section>
        <!-- 核心功能展示 -->
        <section class="features">
            <div class="features-grid">
                <div class="feature-card">
                    <img src="../picture/视频icon.svg" alt="视频教学" />
                    <h3>高清视频教学</h3>
                    <p>专业师范动作分解，多角度慢动作演示</p>
                </div>
                <div class="feature-card">
                    <img src="../picture/进度icon.svg" alt="学习进度" />
                    <h3>智能学习追踪</h3>
                    <p>实时记录，给出个性化学习建议</p>
                </div>
                <div class="feature-card">
                    <img src="../picture/社区.svg" alt="社区互动" />
                    <h3>太极交流社区</h3>
                    <p>与全球爱好者分享练习心得</p>
                </div>
            </div>
        </section>
    </div>
</asp:Content>

