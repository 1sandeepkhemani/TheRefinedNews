// Functionality for the Image Slider

let slideIndex = 0;
const slides = document.querySelectorAll(".slides img");
const dots = document.querySelectorAll(".dot");

function showSlide(index) {
    slides.forEach((slide, i) => {
        slide.classList.remove("active");
        dots[i].classList.remove("active");
        if (i === index) {
            slide.classList.add("active");
            dots[i].classList.add("active");
        }
    });
}

function currentSlide(index) {
    slideIndex = index - 1; // convert 1-based index to 0-based
    showSlide(slideIndex);
}

// Auto-slide every 3 seconds
function autoSlide() {
    slideIndex = (slideIndex + 1) % slides.length;
    showSlide(slideIndex);
}

setInterval(autoSlide, 3000); // Change image every 3 seconds

// Initialize slider
showSlide(slideIndex);

// OTP Send Functionality
document.getElementById('sendOtp').addEventListener('click', function () {
    alert('OTP has been sent to your email.');
});

// Form submission validation
document.getElementById('form1').addEventListener('submit', function (e) {
    const password = document.getElementById('txtPassword').value;
    const confirmPassword = document.getElementById('txtConfirmPassword').value;
    const otp = document.getElementById('txtOtp').value;

    if (password !== confirmPassword) {
        alert('Passwords do not match!');
        e.preventDefault(); // prevent form submission
    }

    if (otp === '') {
        alert('Please enter the OTP sent to your email.');
        e.preventDefault(); // prevent form submission
    }
});