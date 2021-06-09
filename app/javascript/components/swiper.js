// import Swiper JS
import Swiper from "swiper";
import 'swiper/swiper-bundle.css';

// // import Swiper styles
const initSwiper = () => {
// new Swiper(".swiper-container", {
//     speed: 400,
//     slidesPerView: 1.75,
//     centeredSlides: true,
//     spaceBetween: 10,
//   });
  new Swiper(".swiper-container", {
    slidesPerView: "auto",
    spaceBetween: 30,
    speed: 800,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
  });
};


export { initSwiper };
