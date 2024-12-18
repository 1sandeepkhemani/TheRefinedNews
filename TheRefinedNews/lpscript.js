let hamburger = document.querySelector(".sidebar-toggle");
let sidebar = document.querySelector(".sidebar");
let closeBtn = document.querySelector(".sidebar>img");
let sidebarItems = document.querySelectorAll(".sidebar *");

hamburger.addEventListener("click", function (e) {
    sidebar.style.display = "flex";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
});

closeBtn.addEventListener("click", function () {
    sidebar.style.display = "none";
    document.body.style.backgroundColor = "var(--page-color)";
});



AOS.init();

gsap.from(".logos", {
    opacity: 0,
    y: -10,
    delay: 0.5,
    duration: 0.5,
});

// ==== NAV-MENU ==== //
gsap.from(".desktop-navigation .nav_menu_item", {
    opacity: 0,
    y: -10,
    delay: 1,
    duration: 0.5,
    stagger: 0.3,
});

gsap.from(".sidebar-toggle", {
    opacity: 0,
    y: -10,
    delay: 1,
    duration: 0.5,
});

gsap.from(".featured", {
    opacity: 0,
    y: 20,
    delay: 2,
    duration: 1,
});

gsap.from(".news_side", {
    opacity: 0,
    y: 20,
    delay: 2,
    duration: 1,
});

gsap.from(".article-container .article-text", {
    opacity: 0,
    y: 20,
    delay: 3,
    duration: 1,
});

gsap.from(".anim", {
    opacity: 0,
    y: 20,
    delay: 3,
    duration: 1,
});

