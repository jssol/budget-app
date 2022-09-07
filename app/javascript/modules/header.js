const hamburgerButton = document.querySelector('.hamburger-button');
const hamburger = document.querySelector('.hamburger');
const page = document.documentElement;

hamburgerButton.addEventListener('click', () => {
  page.classList.toggle('nav-open');
  if (page.classList.contains('nav-open')) {
    hamburger.classList.remove('fa-bars');
    hamburger.classList.add('fa-times');
  } else {
    hamburger.classList.remove('fa-times');
    hamburger.classList.add('fa-bars');
  }
});
