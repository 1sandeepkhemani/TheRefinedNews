<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetpass.aspx.cs" Inherits="TheRefinedNews.forgetpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create an Account</title>
    <link rel="stylesheet" href="logstyle.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <div class="left-panel">
            <div class="header">
                <a href="Default.aspx" class="back-btn">←Back To Home</a>
            </div>

            <!-- Image Slider -->
            <div class="slider">
                 <div class="slides">
                    <img src="https://img.etimg.com/thumb/width-1200,height-900,imgsize-1810786,resizemode-75,msid-113455468/magazines/panache/stree-2-breaks-srks-jawan-record-shraddha-kapoor-starrer-is-now-highest-grossing-hindi-movie-ever.jpg" alt="Slide 1" class="active" />
                    <img src="https://media.post.rvohealth.io/wp-content/uploads/sites/3/2024/09/surgeons-grouped-surgery-732x549-thumbnail.jpg" alt="Slide 2" class="active" />
                    <img src="https://static.toiimg.com/thumb/msid-111203477,imgsize-1483293,width-400,resizemode-4/111203477.jpg" alt="Slide 3" class="active" />
                </div>
                <div class="slider-dots">
                    <span class="dot" onclick="currentSlide(1)"></span>
                    <span class="dot" onclick="currentSlide(2)"></span>
                    <span class="dot" onclick="currentSlide(3)"></span>
                </div>
                </div>

            <div class="caption">
                <h2>The Refined News</h2>
                
            </div>
        </div>
        <div class="right-panel">
            <div class="form-header">
                <h2>Forget Password</h2>
            </div>
            
                <div class="input-group">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your Name" CssClass="input"></asp:TextBox>
                    
                </div>

                
                


                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Your Email" CssClass="input"></asp:TextBox>
               
                
                <div class="otp-section">
                    <asp:Button ID="Button1" runat="server" Text="Send OTP" CssClass="button" OnClick="Button1_Click" />
                   <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter OTP" CssClass="input"></asp:TextBox>
                </div>

              
                <br />
                <br />
               <asp:Button ID="Button2" runat="server" Text="Sumbit" CssClass="button" OnClick="Button2_Click"/>
           
           
        </div>
    </div>
    <script src="logscript.js"></script>
    </form>
</body>
</html>

