<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TheRefinedNews.landingpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- displays site properly based on user's device -->

    <link
    href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
    rel="stylesheet"
  />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>

    <link
      rel="icon"
      type="image/png"
      sizes="32x32"
      href="./assets/images/favicon-32x32.png"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Inter:100,200,300,regular,500,600,700,800,900"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="lpstyle.css" />

    <script type="text/javascript">
        function buttonss() {
            alert("message send!");
        }
    </script>

    <title>The Refined News</title>
</head>
<body>
     <form id="form1" runat="server" action="#">
        <div class="container">
      <nav>
        <img id="logo" class="logos" src="imagesss/News_logo.jpg
            " style="width: 200px; height: 100px;" alt="" />
        <ul class="desktop-navigation">
          <li class="nav_menu_item"><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton></li>
          <li class="nav_menu_item"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">News</asp:LinkButton></li>
          <li class="nav_menu_item"><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Login</asp:LinkButton></li>
          <li class="nav_menu_item"><asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Register</asp:LinkButton></li>
          
        </ul>
        <img src="assets/images/icon-menu.svg" alt="" class="sidebar-toggle hamburger" />
      </nav>
      
      <!-- Sidebar -->
      <div class="sidebar">
        <img src="assets/images/icon-menu-close.svg" class="sidebar-toggle closeBtn" alt="" />
        <ul>
            <li class="nav_menu_item"><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Home</asp:LinkButton></li>
            <li class="nav_menu_item"><asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">News</asp:LinkButton></li>
            <li class="nav_menu_item"><asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">Login</asp:LinkButton></li>
            <li class="nav_menu_item"><asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click">Register</asp:LinkButton></li>
          
        </ul>
      </div>

      <main>
        <!-- Featured Article -->

        <section class="featured">
          <img
            class="featured-img"
            src="imagesss/image101.jpg" width="500px" alt="page icon" />
          <h1 class="featured-text">The Bright Future of Technology?</h1>

          <div class="cta">
            <p>
              We are on the cusp of a technological revolution that will change the world as we know it. From artificial intelligence computing to biotechnology, the possibilities are endless.
            </p>
            <a href="loginpage.aspx">Read more</a>
          </div>
        </section>

        <!-- Side News -->

        <aside class="news_side">
          <h1>New</h1>
          <div>
            <h2>AI Breakthrough Transforms Healthcare</h2>
            <p>Revolutionary advancements in artifical intelligence improve diagnostics and patient care</p>
          </div>
          <div>
            <h2>Historic Milestone in Women's Cricket</h2>
            <p>
             Record-breaking achievements highlight the growing popularity and talents in women's cricket
            </p>
          </div>
          <div>
            <h2>Tech Stocks Rally on AI Innovation</h2>
            <p>
              IT Sector sees siginificant gains as AI developments fuel market optimism
            </p>
          </div>
        </aside>

        <!-- Other Articles -->

       
        <section class="article-container">
          <div>
            <img src="assets/images/image-retro-pcs.jpg" alt="" class="article-text" />
            
            <div class="article-text">
              <h1>01</h1>
              <h3>Reviving Retro PCs</h3>
              <p>What happens when old PCs are given modern upgrades?</p>
            </div>
          </div>
          <div>
            <img src="assets/images/image-top-laptops.jpg" alt="" class="article-text" />
            <div class="article-text">
              <h1>02</h1>
              <h3>Top 10 Laptops of 2024</h3>
              <p>Our best picks for various needs and budgets.</p>
            </div>
          </div>
          <div>
            <img src="assets/images/image-gaming-growth.jpg" alt="" class="article-text" />
            <div class="article-text">
              <h1>03</h1>
              <h3>The Growth of Gaming</h3>
              <p>How the pandemic has sparked fresh opportunities.</p>
            </div>
          </div>
        </section>
      </main>
    </div>

    <footer class="anim">
      <div class="main-content">
        <div class="left box">
          <h2>About us</h2>
          <div class="content">
            <p>The Refined News Website will provide a fast, reliable, and user-friendly platform for accessing news articles. The website will cater to a wide audience, offering real-time updates and a simple yet effective interface for browsing, reading, and interacting with content.
            </p>
            <div class="social">
              <a href="#"><span class="fab fa-facebook-f"></span></a>
              <a href="#"><span class="fab fa-twitter"></span></a>
              <a href="#"><span class="fab fa-instagram"></span></a>
              <a href="#"><span class="fab fa-youtube"></span></a>
            </div>
          </div>
        </div>

        <div class="center box">
          <h2>Address</h2>
          <div class="content">
            <div class="place">
              <span class="fas fa-map-marker-alt"></span>
              <span class="text">Indore, Madhya Pradesh</span>
            </div>
            <div class="phone">
              <span class="fas fa-phone-alt"></span>
              <span class="text">+91 7412589630</span>
            </div>
            <div class="email">
              <span class="fas fa-envelope"></span>
              <span class="text">therefinednews@gmail.com</span>
            </div>
          </div>
        </div>

        <div class="right box">
          <h2>Contact us</h2>
          <div class="content">
            
              <div class="email">
                <div class="text">Email</div>
                  <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Proper Email" EnableClientScript="True" ControlToValidate="TextBox1" Font-Bold="True" Font-Size="Large" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True"></asp:RegularExpressionValidator>
                  </div>
              <div class="msg">
                <div class="text">Message</div>
                  <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
              </div>
              <div class="btn">
                  <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
              </div>
           
          </div>
        </div>
      </div>
      <div class="bottom">
        <hr />
        <center>
          <span class="credit">Created By The Refined News </span>
                  </center>
      </div>
    </footer>
  

    
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!-- ==== GSAP CDN ==== -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js"></script>

    <script src ="lpscript.js"></script>
    </form>
</body>
</html>
