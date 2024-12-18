<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="TheRefinedNews.loginpage" %>

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
                    <img src="https://images.pond5.com/4k-news-reporter-doing-live-061718856_prevstill.jpeg" alt="Slide 1" class="active" />
                    <img src="https://ichef.bbci.co.uk/news/480/cpsprodpb/8650/live/32d39da0-5ae3-11ef-8f0f-0577398c3339.jpg.webp" alt="Slide 2" class="active" />
                    <img src="https://c.ndtvimg.com/2024-09/eomrcns8_india-us-uk-france_625x300_27_September_24.jpg?downsize=500:281" alt="Slide 3" class="active" />
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
                <h2>Login Account</h2>
                <br />
                
                <p>Don't have an account? <a href="registerpage.aspx">Register Now</a></p>
            </div>
            
               
                
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Your Email" CssClass="input"></asp:TextBox>
               <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Your Password" CssClass="input" TextMode="Password"></asp:TextBox>
              
                <br />
                

                <center><a href="forgetpass.aspx">Forget Password?</a></center>
               

              
                <br />
                <br />

               <asp:Button ID="Button2" runat="server" Text="LOGIN " CssClass="button" OnClick="Button2_Click"/>
           
           
        </div>
    </div>
    <script src="logscript.js"></script>
    </form>
</body>
</html>
