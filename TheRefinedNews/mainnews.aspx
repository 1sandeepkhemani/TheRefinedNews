<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainnews.aspx.cs" Inherits="TheRefinedNews.mainnews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Refined News</title>
     <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="mnstyle.css" />
       
</head>
<body>
    <form id="form1" runat="server">
         <nav>
     <div class="main-nav container flex">
         
             <h1 style="font-family:'Bell MT'; color:#0e0d0d;  font-weight:bold; text-decoration:underline;">The Refined News</h1>
        
         <div class="nav-links flex">
             <ul>
                 <li class="hover-link nav-item" id="cricket" onClick="onNavItemClick('cricket')">Cricket</li>
                 <li class="hover-link nav-item" id="india" onClick="onNavItemClick('india')">India</li>
                 <li class="hover-link nav-item" id="technology" onClick="onNavItemClick('technology')">Technology</li>
                 <li class="hover-link nav-item" id="politics" onClick="onNavItemClick('politics')">Politics</li>
             </ul>
         </div>

         <!-- User Section -->
         <div class="user-section">
             <span class="user-name">
                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label></span>
             <div class="user-dropdown">
                 <ul>
                     <li>
                         <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="dropdown-item" >Change Password</asp:LinkButton></li>
                     <li><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="dropdown-item">Logout</asp:LinkButton></li>
                 </ul>
             </div>
         </div>

         <!-- Search Bar -->
         <div class="search-bar flex">
            <input type="text" class="news-input" id="search-text" placeholder="e.g. Science">
<button class="search-button" id="search-button">Search</button>
            
</div>
     </div>
 </nav>

 <main>
     <div class="cards-container container flex" id="cardscontainer">
         <!-- News Cards will be loaded here dynamically -->
     </div>
 </main>

 <template id="template-news-card">
     <div class="card">
         <div class="card-header">
             <img src="https://via.placeholder.com/400x200" alt="" id="news-img" />
         </div>
         <div class="card-content">
             <h3 id="news-title">This is the Title</h3>
             <h6 class="news-source" id="news-source">constGenius 02/02/2024</h6>
             <p class="news-desc" id="news-desc">
                 Lorem ipsum dolor sit, amet consectetur adipisicing elit. Rem
                 incidunt ratione, dolore beatae quaerat voluptatum autem fugit voluptas minima eligendi facere
                 tenetur cumque. Dolorem porro, fugiat distinctio a accusamus cum!
             </p>
         </div>
     </div>
 </template>

    </form>
     <script src="mnscript.js"></script>
</body>
</html>
