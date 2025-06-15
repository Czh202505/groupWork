<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Pages_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>太极之道 - 登录</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', 'Microsoft YaHei', sans-serif;
        }

        body {
            background: linear-gradient(135deg, #1a3c2f 0%, #2a5d42 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            display: flex;
            max-width: 1000px;
            width: 100%;
            background: white;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 15px 50px rgba(0, 0, 0, 0.3);
        }

        .left-panel {
            flex: 1;
            background: linear-gradient(rgba(42, 93, 66, 0.8), rgba(26, 60, 47, 0.9));
            background-size: cover;
            background-position: center;
            color: white;
            padding: 50px 40px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .logo {
            display: flex;
            align-items: center;
            margin-bottom: 40px;
        }

        .logo-icon {
            width: 50px;
            height: 50px;
            background: white;
            border-radius: 50%;
            position: relative;
            margin-right: 15px;
        }

            .logo-icon::before {
                content: "";
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 50%;
                background: #1a3c2f;
                border-radius: 25px 25px 0 0;
            }

            .logo-icon::after {
                content: "";
                position: absolute;
                top: 25px;
                left: 20px;
                width: 10px;
                height: 10px;
                background: white;
                border-radius: 50%;
                box-shadow: 0 0 0 5px #1a3c2f;
            }

        .logo h1 {
            font-size: 28px;
            font-weight: 600;
        }

        .welcome-text h2 {
            font-size: 36px;
            margin-bottom: 20px;
            line-height: 1.3;
        }

        .welcome-text p {
            font-size: 18px;
            opacity: 0.9;
            line-height: 1.6;
        }

        .quote {
            font-style: italic;
            font-size: 16px;
            opacity: 0.8;
            margin-top: 30px;
        }

        .right-panel {
            flex: 1;
            padding: 60px 50px;
            background: white;
        }

        .login-header {
            margin-bottom: 40px;
        }

            .login-header h2 {
                font-size: 32px;
                color: #2a5d42;
                margin-bottom: 10px;
            }

            .login-header p {
                color: #666;
                font-size: 16px;
            }

        .form-group {
            margin-bottom: 25px;
            position: relative;
        }

            .form-group label {
                display: block;
                margin-bottom: 8px;
                color: #444;
                font-weight: 500;
                font-size: 15px;
            }

        .input-with-icon {
            position: relative;
        }

            .input-with-icon i {
                position: absolute;
                left: 15px;
                top: 50%;
                transform: translateY(-50%);
                color: #777;
            }

            .input-with-icon input {
                width: 100%;
                padding: 15px 15px 15px 45px;
                border: 2px solid #e0e0e0;
                border-radius: 10px;
                font-size: 16px;
                transition: all 0.3s;
            }

                .input-with-icon input:focus {
                    border-color: #2a5d42;
                    box-shadow: 0 0 0 2px rgba(42, 93, 66, 0.2);
                    outline: none;
                }

        .remember-forgot {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
            font-size: 14px;
        }

            .remember-forgot label {
                display: flex;
                align-items: center;
                color: #555;
                cursor: pointer;
            }

            .remember-forgot input {
                margin-right: 8px;
            }

            .remember-forgot a {
                color: #2a5d42;
                text-decoration: none;
                transition: color 0.3s;
            }

                .remember-forgot a:hover {
                    text-decoration: underline;
                }

        .btn-login {
            width: 100%;
            padding: 16px;
            background: #2a5d42;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            margin-bottom: 25px;
        }

            .btn-login:hover {
                background: #1a3c2f;
                transform: translateY(-2px);
                box-shadow: 0 5px 15px rgba(42, 93, 66, 0.3);
            }

        .social-login {
            text-align: center;
            margin-bottom: 30px;
        }

            .social-login p {
                position: relative;
                color: #777;
                margin-bottom: 20px;
            }

                .social-login p::before,
                .social-login p::after {
                    content: "";
                    position: absolute;
                    top: 50%;
                    width: 30%;
                    height: 1px;
                    background: #e0e0e0;
                }

                .social-login p::before {
                    left: 0;
                }

                .social-login p::after {
                    right: 0;
                }

        .social-icons {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .social-icon {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            background: #f5f5f5;
            color: #555;
            font-size: 20px;
            cursor: pointer;
            transition: all 0.3s;
        }

            .social-icon:hover {
                transform: translateY(-3px);
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            }

            .social-icon.facebook:hover {
                background: #3b5998;
                color: white;
            }

            .social-icon.google:hover {
                background: #dd4b39;
                color: white;
            }

            .social-icon.apple:hover {
                background: #000;
                color: white;
            }

        .register-link {
            text-align: center;
            color: #666;
            font-size: 15px;
        }

            .register-link a {
                color: #2a5d42;
                text-decoration: none;
                font-weight: 600;
            }

                .register-link a:hover {
                    text-decoration: underline;
                }

        /* 响应式设计 */
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }

            .left-panel {
                padding: 30px;
            }

            .right-panel {
                padding: 40px 30px;
            }
        }
    </style>
</head>
<body>
    <form runat="server">
    <div class="container">
        <div class="left-panel">
            <div>
                <div class="logo">
                    <div class="logo-icon"></div>
                    <h1>太极之道</h1>
                </div>

                <div class="welcome-text">
                    <h2>欢迎回到太极拳学习平台</h2>
                    <p>在这里，您将掌握杨氏24式太极拳的精髓，体验中华武术的博大精深，感受身心合一的和谐境界。</p>
                    <p class="quote">"太极拳，其根在脚，发于腿，主宰于腰，形于手指。"<br/>
                        —— 杨澄甫</p>
                </div>
            </div>
        </div>

        <div class="right-panel">
            <div class="login-header">
                <h2>账号登录</h2>
                <p>请输入您的账号信息开始学习之旅</p>
            </div>

                <div class="form-group">
                    <label for="username">用户名</label>
                    <div class="input-with-icon">
                        <i class="fas fa-user"></i>
                        <asp:TextBox ID="username" runat="server" ></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label for="password">密码</label>
                    <div class="input-with-icon">
                        <i class="fas fa-lock"></i>
                        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>



                <asp:Button ID="Button1" runat="server" Text="登录" CssClass="btn-login" OnClick="Button1_Click" />


            <div class="register-link">
                <p>还没有账号？ <a href="registration.aspx">立即注册</a></p>
            </div>
        </div>
    </div>

    <script>

    </script>
        </form>
</body>
</html>
