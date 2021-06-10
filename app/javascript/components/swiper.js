// import Swiper JS
import Swiper from "swiper";
// core version + navigation, pagination modules:
import SwiperCore, { Pagination } from 'swiper/core';

// configure Swiper to use modules
SwiperCore.use([Pagination]);

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
    spaceBetween: 0,
    speed: 800,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
  });
};


export { initSwiper };
