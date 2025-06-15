<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="videoPage.aspx.cs" Inherits="Pages_videoPage1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <title>杨氏24式太极拳学习平台</title>
    <link href="../style/courses.css" type="text/css" rel="stylesheet" />
    <link href="../style/homePage.css" type="text/css" rel="stylesheet" />
    <link href="../style/video.css" type="text/css" rel="stylesheet" />
    <style>
        h1 {
            text-align: center;
            border-bottom: 2px solid #8B4513;
            padding-bottom: 10px;
        }

        h2 {
            margin-top: 25px;
            border-left: 4px solid #556B2F;
            padding-left: 10px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="container">
        <!-- 主页视频模块 -->
        <section class="video-section" style="text-align: center">
            <h2 style="text-align: justify">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h2>
            <video controls="controls" runat="server" style="width: 90%" id="video1">
            </video>
        </section>

</asp:Content>

