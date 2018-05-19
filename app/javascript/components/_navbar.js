const navbar = document.querySelector('.navbar-custom');
const bannerGeometricShape = document.querySelector('.banner-geometric-shape');

function navBarColor() {
  var rect = bannerGeometricShape.getBoundingClientRect();
  var removePosition;
  if ( window.innerWidth < 991 ) {
    removePosition = -170;
  console.log(removePosition);
  } else {
    removePosition = 70;
  }
  if ( rect.top < 500 && rect.top > removePosition ) {
    navbar.classList.add('navbar-is-gray');
  } else {
    navbar.classList.remove('navbar-is-gray');
  }
}

window.addEventListener("scroll", navBarColor);
