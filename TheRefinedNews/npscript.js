﻿async function waitForDOM() {
    while (!document.querySelector('.ham-btn') ||
        !document.querySelector('.times-btn') ||
        !document.getElementById('nav-bar')) {
        await new Promise(resolve => setTimeout(resolve, 100));
    }

    const btnHam = document.querySelector('.ham-btn');
    const btnTimes = document.querySelector('.times-btn');
    const navBar = document.getElementById('nav-bar');

    btnHam.addEventListener('click', function () {
        btnHam.style.display = "none";
        btnTimes.style.display = "block";
        navBar.classList.add("show-nav");
    });

    btnTimes.addEventListener('click', function () {
        btnTimes.style.display = "none";
        btnHam.style.display = "block";
        navBar.classList.remove("show-nav");
    });
}

waitForDOM();