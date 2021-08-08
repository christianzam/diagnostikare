const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-darker');
      } else {
        navbar.classList.remove('navbar-darker');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };