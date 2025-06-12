<%@ Page Language="C#" AutoEventWireup="true" CodeFile="videoPage.aspx.cs" Inherits="homePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
</head>
<body>
    <!-- 导航栏 -->
    <nav class="navbar">
        <a href="homePage.aspx" class="logo">太极之道</a>
        <div class="nav-links">
            <a href="courses.aspx">课程体系</a>
            <a href="#community">太极社区</a>
            <a href="#profile">个人中心</a>
        </div>
    </nav>
    <hr />

    <div class="container">
        <!-- 主页视频模块 -->
        <section class="video-section">
            <h2>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h2>
            <video controls="controls" runat="server" style="width: 100%" id="video1">
            </video>
        </section>

        <!-- 动作拆解列表 -->
<%--        <section>
            <h2>动作分解学习</h2>
            <div class="action-list">
                <div class="action-card">

                    <h3>1. 起势</h3>
                    <div>
                        <p>杨氏太极拳的<strong>起势</strong>作为第一式，是无极生太极的关键动作，其核心在于<strong>放松、稳静、气沉丹田</strong>，贯穿整趟拳架的松柔与整劲。</p>
                    </div>

                    <h2>一、预备式（无极势）</h2>

                    <div class="steps">
                        <ol>
                            <li><strong>站立姿势</strong>
                                <ul>
                                    <li>两脚并拢或平行开立（与肩同宽），脚尖向前，重心均匀分布。</li>
                                    <li>虚领顶劲（头顶百会穴上领），下颌微收，目视前方，脊柱竖直，尾闾中正。</li>
                                    <li>两臂自然下垂，中指轻贴裤缝，松肩、松肘、松腕，全身如"水流"般逐节放松至脚底涌泉穴。</li>
                                </ul>
                            </li>
                            <li><strong>调息与意念</strong>
                                <ul>
                                    <li>呼吸自然深长，采用逆腹式呼吸（吸气时收腹，呼气时放松）。</li>
                                    <li>意念引导松沉：从头顶→面部→颈部→肩→胸→腹→胯→腿→膝→脚趾，直至脚底生根。</li>
                                </ul>
                            </li>
                        </ol>
                    </div>

                    <h2>二、起势动作分解</h2>

                    <div class="steps">
                        <ol>
                            <li><strong>两臂缓缓上提</strong>
                                <ul>
                                    <li>以脚底反座力为源动力，双臂如被细绳牵引，掌心向下缓慢前举至肩高，与肩同宽。</li>
                                    <li><span class="highlight">要点</span>：
                        <ul>
                            <li>沉肩坠肘，肘尖微屈下垂，不可耸肩。</li>
                            <li>配合吸气，脚趾微抓地、提肛收腹（气聚命门）。</li>
                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><strong>环状收回与下落</strong>
                                <ul>
                                    <li>双臂升至肩高时，松肩内收，两掌间距略窄于肩，似抱球状。</li>
                                    <li>随后呼气，双臂如"降落伞"缓缓下落，同时意念松沉至脚底，逐节放松胸、背、腰、胯。</li>
                                    <li><span class="highlight">要点</span>：
                        <ul>
                            <li>下落时保持坠肘，腕部放松，指尖有麻胀感。</li>
                            <li>重心始终在脚底涌泉穴，膝盖不超脚尖。</li>
                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ol>
                    </div>

                    <h2>三、核心要领</h2>

                    <ul style="padding-left: 35px">
                        <li><strong>松柔贯穿</strong>：动作需"大松大软"，避免肌肉僵硬，以地力催动肢体，形成整劲。</li>
                        <li><strong>阴阳虚实</strong>：起势前为无极（无虚实），起势后分阴阳（如吸气为虚，呼气为实）。</li>
                        <li><strong>养生与技击结合</strong>：
                            <ul style="padding-left: 35px">
                                <li>长期练习可调和气血，促进经络畅通。</li>
                                <li>推手中应用时，需通过松沉化解外力，做到"发人于不觉"。</li>
                            </ul>
                        </li>
                    </ul>

                    <h2>四、常见误区</h2>

                    <div class="warning">
                        <ul style="padding-left: 35px">
                            <li><strong>人为抬臂</strong>：手臂上提需借地力与腰胯带动，而非局部用力。</li>
                            <li><strong>呼吸紊乱</strong>：动作与呼吸需同步，避免憋气或急促。</li>
                            <li><strong>重心不稳</strong>：松沉时保持立身中正，避免前倾后仰。</li>
                        </ul>
                    </div>

                    <div class="note">
                        <p><strong>练习建议</strong>：每日专注起势30分钟，体会松沉与整劲。</p>
                    </div>
                </div>
            </div>
        </section>--%>

    </div>
</body>
</html>
