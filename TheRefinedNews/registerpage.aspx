
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerpage.aspx.cs" Inherits="TheRefinedNews.registerpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create an Account</title>
    <link rel="stylesheet" href="rpstyle.css">
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
                    <img src="https://www.hindustantimes.com/ht-img/img/2024/08/25/550x309/india_against_spin_1724570313227_1724570325787.jpg" alt="Slide 1" class="active" />
                    <img src="https://contentstatic.techgig.com/photo/87503372/techgig-daily-tech-news-digest-03-november.jpg?1189006" alt="Slide 2" class="active" />
                    <img src="https://ichef.bbci.co.uk/news/480/cpsprodpb/a1ba/live/9a20a290-7c2c-11ef-8464-611eedd3c7d3.jpg.webp" alt="Slide 3" class="active" />
                </div>
                <div class="slider-dots">
                    <span class="dot" onclick="currentSlide(1)"></span>
                    <span class="dot" onclick="currentSlide(2)"></span>
                    <span class="dot" onclick="currentSlide(3)"></span>
                </div>
                </div>

            <div class="caption">
                <h2>The Refined News</h2>
                <br />
                <p style="text-align:justify">The Refined News delivers the latest updates from around the world, keeping you informed with accurate, timely, and well-researched news. We focus on providing clarity and depth, ensuring that each story is presented in a concise yet comprehensive manner. </p>

            </div>
        </div>
        <div class="right-panel">
            <div class="form-header">
                <h2>Create an account</h2>
                <p>Already have an account? <a href="loginpage.aspx">Log in</a></p>
            </div>
            
                <div class="input-group">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your Name" CssClass="input"></asp:TextBox>
                    
                </div>

                 <!-- Gender dropdown list -->
                 <div class="input-group">
                     <asp:DropDownList ID="DropDownList1" runat="server" CssClass="select" Placeholder="Select gender">
                         <asp:ListItem>Select Gender</asp:ListItem>
                         <asp:ListItem>Male</asp:ListItem>
                         <asp:ListItem>Female</asp:ListItem>
                         <asp:ListItem>Other</asp:ListItem>
                     </asp:DropDownList>
                </div>


                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Your Email" CssClass="input"></asp:TextBox>
               
                
                <div class="otp-section">
                    <asp:Button ID="Button1" runat="server" Text="Send OTP" CssClass="button"  OnClick="Button1_Click" />
                   <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter OTP" CssClass="input"></asp:TextBox>
                </div>
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Your Password" CssClass="input" Enabled="False" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Confirm Your Password" CssClass="input" Enabled="False" TextMode="Password"></asp:TextBox>

              
                <br />
               <asp:Button ID="Button2" runat="server" Text="Create Account" CssClass="button" OnClick="Button2_Click"/>
           
           
        </div>
    </div>
    <script src="rpscript.js"></script>
    </form>
</body>
</html>
