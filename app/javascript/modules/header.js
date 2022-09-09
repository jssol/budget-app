const page = document.documentElement;
const pageBody = document.getElementsByClassName('body')[0];

if (location.pathname.match(/^\/users\/\d+\/groups$/) || location.pathname.match(/^\/users\/\d+\/group\/entities+$/)) {
  const hamburgerButton = document.querySelector(".hamburger-button");
  const hamburger = document.querySelector(".hamburger");

  hamburgerButton.addEventListener("click", () => {
    page.classList.toggle("nav-open");
    if (page.classList.contains("nav-open")) {
      hamburger.classList.remove("fa-bars");
      hamburger.classList.add("fa-times");
    } else {
      hamburger.classList.remove("fa-times");
      hamburger.classList.add("fa-bars");
    }
  });
}
