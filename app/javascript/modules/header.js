const page = document.documentElement;
const pageBody = document.getElementsByClassName('body')[0];

if (location.pathname.match(/^\/users\/\d+\/groups$/) || location.pathname.match(/^\/users\/\d+\/group\/entities+$/)) {
  const hamburgerButton = document.querySelector(".hamburger-button");
  const hamburgerCloser = document.querySelector(".hamburger-closer");
  const hamburger = document.querySelector(".hamburger");

  hamburgerButton.addEventListener("click", () => {
    page.classList.add("nav-open");
  });

  hamburgerCloser.addEventListener("click", () => {
    page.classList.remove("nav-open");
  });
}
