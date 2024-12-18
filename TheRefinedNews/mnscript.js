const API_KEY = "c2c3ceb7c7594f8ba1402856d258bb54";
const url = "https://newsapi.org/v2/everything?q=";

// Load initial news category
window.addEventListener("load", () => fetchNews("Technology"));

async function fetchNews(query) {
    try {
        console.log(`Fetching news for: ${query}`); // Debug log
        const res = await fetch(`${url}${query}&apiKey=${API_KEY}`);

        if (!res.ok) throw new Error(`Error: ${res.status} - ${res.statusText}`);

        const data = await res.json();
        if (!data.articles || data.articles.length === 0) {
            alert("No news found for your search. Please try another keyword.");
            return;
        }

        bindData(data.articles);
    } catch (error) {
        console.error("Failed to fetch news:", error);
        alert("Something went wrong. Please try again later.");
    }
}

function bindData(articles) {
    const cardsContainer = document.getElementById("cardscontainer");
    const newsCardTemplate = document.getElementById("template-news-card");

    // Clear existing news
    cardsContainer.innerHTML = "";

    // Populate with new news
    articles.forEach((article) => {
        if (!article.urlToImage) return; // Skip articles without an image

        const cardClone = newsCardTemplate.content.cloneNode(true);
        fillDataInCard(cardClone, article);
        cardsContainer.appendChild(cardClone);
    });
}

function fillDataInCard(cardClone, article) {
    const newsImg = cardClone.querySelector("#news-img");
    const newsTitle = cardClone.querySelector("#news-title");
    const newsSource = cardClone.querySelector("#news-source");
    const newsDesc = cardClone.querySelector("#news-desc");

    newsImg.src = article.urlToImage || "https://via.placeholder.com/400x200";
    newsTitle.textContent = `${article.title.slice(0, 60)}...`; // Truncate to 60 characters
    newsDesc.textContent = `${article.description.slice(0, 150)}...`; // Truncate to 150 characters

    // Format date and source
    const date = new Date(article.publishedAt).toLocaleString("en-US", { timeZone: "Asia/Jakarta" });
    newsSource.textContent = `${article.source.name} · ${date}`;

    // Add click event to open the article
    cardClone.firstElementChild.addEventListener("click", () => {
        window.open(article.url, "_blank");
    });
}

// Search functionality
const searchButton = document.getElementById("search-button");
const searchText = document.getElementById("search-text");

searchButton.addEventListener("click", (event) => {
    event.preventDefault(); // Prevent form submission
    const query = searchText.value.trim(); // Get and trim the search query

    if (!query) {
        alert("Please enter a search term.");
        return;
    }

    fetchNews(query); // Fetch news based on search input
    curSelectedNav?.classList.remove("active"); // Remove active state from any selected nav item
    curSelectedNav = null; // Reset active navigation item
});

// Navigation bar functionality
let curSelectedNav = null;

function onNavItemClick(id) {
    fetchNews(id); // Fetch news for the clicked category
    const navItem = document.getElementById(id);

    curSelectedNav?.classList.remove("active"); // Remove active state from previous selection
    curSelectedNav = navItem;
    curSelectedNav.classList.add("active"); // Set active state for current selection
}
