<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newspage.aspx.cs" Inherits="TheRefinedNews.newspage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        
        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="npstyle.css" />


        <!-- google fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Raleway:wght@300;400;500;700;900&display=swap" rel="stylesheet" />
        <!-- fontawesome -->
        <script src="https://kit.fontawesome.com/dbed6b6114.js" crossorigin="anonymous"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
   

    <title>The Refined News</title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- header -->
        <header>
            <div class = "navigation-container">
                <div class = "top-head">
                    <div class = "web-name">
                        <h1>TheRefinedNews</h1>
                    </div>

                    <div class = "ham-btn">
                        <span>
                         <img src="assets/images/icon-menu.svg" alt="" class="sidebar-toggle hamburger" />
                        </span>
                    </div>

                    <div class = "times-btn">
                        <span>
                            <i class ="fas fa-times"></i>
                        </span>
                    </div>
                </div>

                <!-- nav bar -->

                <div class = "nav-bar" id = "nav-bar">
                    <nav>
                        <ul>
                            <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Home</asp:LinkButton></li>
                            <li ><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">News</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Login</asp:LinkButton></li>
                            <li ><asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Register</asp:LinkButton></li>
          
                        </ul>
                    </nav>
                </div>

               
            </div>
        </header>

        <section class = "banner">
            <div class = "banner-main-content">
                <h2>GET THE WORLD'S LATEST TECH NEWS</h2>
                <h3>World's Leading Tech News Portal</h3>

                <button>
                    <a href = "loginpage.aspx">Know More</a>
                </button>

                <div class = "current-news-head">
                    <h3>Apple Glasses: What we expect, what we think we are <span>by scott stein</span></h3>

                    <h3>What's it's like to have Elon Musk's old phone number <span>by abrar al-heeti</span></h3>

                    <h3>Watch the exact moment Chris Pratt accidentally deletes 51, 000 emials <span>by goel fashingbauer</span></h3>

                    <h3>Richard Branson's Virgin Orbit will launch a rocket from midair Sunday <span>by eric mack</span></h3>
                </div>
            </div>

            <div class = "banner-sub-content">
                <div class = "hot-topic">
                    <img src = "images/banner-news-1.jpg" alt = "" />

                    <div class = "hot-topic-content">
                        <h2>Twitter's New Retweet With Comment Counter Is Now Available On Andriod & Web</h2>

                        <h3>New Topic 1</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore consequatur nostrum minus iusto fugit unde.</p>
                        <a href = "loginpage.aspx">Read More</a>
                    </div>
                </div>

                <div class = "hot-topic">
                    <img src = "images/banner-news-2.jpg" alt = "" />

                    <div class = "hot-topic-content">
                        <h2>Twitter's New Retweet With Comment Counter Is Now Available On Andriod & Web</h2>

                        <h3>New Topic 1</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore consequatur nostrum minus iusto fugit unde.</p>
                        <a href = "loginpage.aspx">Read More</a>
                    </div>
                </div>

                <div class = "hot-topic">
                    <img src = "images/banner-news-3.jpg" alt = "" />

                    <div class = "hot-topic-content">
                        <h2>Twitter's New Retweet With Comment Counter Is Now Available On Andriod & Web</h2>

                        <h3>New Topic 1</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore consequatur nostrum minus iusto fugit unde.</p>
                        <a href = "loginpage.aspx">Read More</a>
                    </div>
                </div>

                <div class = "hot-topic">
                    <img src = "images/banner-news-4.jpg" alt = "" />

                    <div class = "hot-topic-content">
                        <h2>Twitter's New Retweet With Comment Counter Is Now Available On Andriod & Web</h2>

                        <h3>New Topic 1</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore consequatur nostrum minus iusto fugit unde.</p>
                        <a href = "loginpage.aspx">Read More</a>
                    </div>
                </div>
            </div>
        </section>
        
        <hr />

        <main>
            <section class = "main-container-left">
                <h2>Top Stories</h2>
                <div class = "container-top-left">
                    <article>
                        <img src = "images/top-left.jpg" />

                        <div>
                            <h3>Best Used Cars Under $20, 000 for families</h3>

                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis ea sint, nisi rem earum fugit? Facere veritatis sapiente eveniet quibusdam.</p>

                            <a href = "loginpage.aspx">Read More <span>>></span></a>
                        </div>
                    </article>
                </div>

                <div class = "container-bottom-left">
                    <article>
                        <img src = "images/bottom-left-1.jpg" />
                        <div>
                            <h3>Best smart speakers for the year</h3>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Commodi iure modi animi cupiditate. Explicabo, nihil?</p>

                            <a href = "loginpage.aspx">Read More <span>>></span></a>
                        </div>
                    </article>

                    <article>
                        <img src = "images/bottom-left-2.jpg" />
                        <div>
                            <h3>iPad Pro, reviewed: Has the iPad become my main computer now?</h3>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Commodi iure modi animi cupiditate. Explicabo, nihil?</p>

                            <a href = "loginpage.aspx">Read More <span>>></span></a>
                        </div>
                    </article>
                </div>
            </section>

            <section class = "main-container-right">
                <h2>Latest Stories</h2>
                
                <article>
                    <h4>just in </h4>
                    <div>
                        <h2>Here's how to track your stimulus check with the IRS Get My Payment Portal</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "loginpage.aspx">Read More <span>>></span></a>
                    </div>
                    <img src = "images/right-1.jpg" />
                </article>

                <article>
                    <h4>just in </h4>
                    <div>
                        <h2>The best outdoor games to play with your family</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "loginpage.aspx">Read More <span>>></span></a>
                    </div>
                    <img src = "images/right-2.jpg" />
                </article>

                <article>
                    <h4>just in </h4>
                    <div>
                        <h2>Why walk? Check out the best electric scooters and e-bikes for 2020</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "loginpage.aspx">Read More <span>>></span></a>
                    </div>
                    <img src = "images/right-3.jpg" />
                </article>

                <article>
                    <h4>just in </h4>
                    <div>
                        <h2>Disneyland Paris will stream its Lion King stage show Friday night</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "loginpage.aspx">Read More <span>>></span></a>
                    </div>
                    <img src = "images/right-4.jpg" />
                </article>

                <article>
                    <h4>just in </h4>
                    <div>
                        <h2>Looking at a phone's lock screen also requries a warrant, judge rules</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "loginpage.aspx">Read More <span>>></span></a>
                    </div>
                    <img src = "images/right-5.jpg" />
                </article>
            </section>
        </main>

        <footer>
            <div class = "footer-container">
                <div class = "footer-left">
                    <h2>The Refined News </h2>
                    <p style="text-align:justify">The Refined News Website will provide a fast, reliable, and user-friendly platform for accessing news articles. The website will cater to a wide audience, offering real-time updates and a simple yet effective interface for browsing, reading, and interacting with content.
                    </p>
                </div>

                
            </div>

            
        </footer>

   
    </form>
           <script src="npscript.js" defer> </script> 
</body>
</html>
