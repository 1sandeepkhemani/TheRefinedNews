<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newpass.aspx.cs" Inherits="TheRefinedNews.newpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>The Refined News</title>
    <link rel="stylesheet" href="logstyle.css" />
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
                    <img src="https://media.npr.org/assets/img/2023/10/21/gettyimages-1736843765_slide-2f8e402cadc37fa45efffff2b9f90c7b4f97da82.jpg?s=1100&c=50&f=jpeg" alt="Slide 1" class="active" />
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt2ExYI4auSH8_u8Pt2TPVZNbjorhVLy20mQ&s" alt="Slide 2" class="active" />
                    <img src="https://wallpapers.com/images/hd/indian-cricket-ms-dhoni-o047260qn6x22sri.jpg" alt="Slide 3" class="active" />
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
                <h2>Set New Password</h2>
            </div>
            
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Your Email" CssClass="input"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Your Password" CssClass="input" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server" placeholder="Confirm Your Password" CssClass="input" TextMode="Password"></asp:TextBox>
                
               

              
                <br />
                <br />
               <asp:Button ID="Button2" runat="server" Text="Sumbit" CssClass="button" OnClick="Button2_Click"/>
           
           
        </div>
    </div>
    <script src="logscript.js"></script>
    </form>
</body>
</html>
