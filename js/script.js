const handleSubmit = (event) => {
  event.preventDefault();

  const myForm = event.target;
  const formData = new FormData(myForm);
  
  fetch("/", {
    method: "POST",
    headers: { "Content-Type": "application/x-www-form-urlencoded" },
    body: new URLSearchParams(formData).toString(),
  })
    .then(() => console.log("Form successfully submitted"))
    .catch((error) => alert(error));
};

document
  .querySelector("form")
  .addEventListener("submit", handleSubmit);
let stars = document.getElementById("stars");
let moon = document.getElementById("moon");
let mountains_behind = document.getElementById("mountains_behind");
let mountains_front = document.getElementById("mountains_front");
let text = document.getElementById("text");
let btn = document.getElementById("btn");
let header = document.querySelector("header");
const splash = document.querySelector('.splash');


document.addEventListener('DOMContentLoaded', (e) => {
    setTimeout(() => {
        splash.classList.add('display-none');
    }, 2000);
})

window.addEventListener("scroll", function () {
    let value = this.window.scrollY;
    stars.style.left = value * 0.25 + 'px';
    moon.style.top = value * 1.05 + 'px';
    mountains_behind.style.top = value * 0.5 + 'px';
    mountains_front.style.top = value * 0.5 + 'px';
    text.style.marginRight = value * 4 + 'px';
    btn.style.marginTop = value * 1.5 + 'px';
    //header.style.top = value * 0.5 + 'px';
})
window.addEventListener("scroll", function () {
    header.classList.toggle("sticky", window.scrollY > 0);
});

let menu = document.querySelector('#menu-icon');
let navbar = document.querySelector('.navbar');

menu.onclick = () => {
    menu.classList.toggle('bx-x');
    navbar.classList.toggle('active');
};

window.onscroll = () => {
    menu.classList.remove('bx-x');
    navbar.classList.remove('active');
};

const sr = ScrollReveal({
    distance: '25px',
    duration: 2500,
    reset: true
})

sr.reveal('.home-text', { delay: 190, origin: 'bottom' })

sr.reveal('.about,.services,.portfolio,.contact', { delay: 200, origin: 'bottom' })

