<template>
  <footer>
    <div class="footer-container">
      <div class="container pb-80 pt-80 ontop">
        <div class="row">
          <div class="col-lg-3">
            <div class="logo">
              <img src="/assets/imgs/astra.png" alt="" />
            </div>
          </div>
          <div class="col-lg-6">
            <div class="column">
              <h6 class="sub-title mb-30">Social Media</h6>
              <ul class="rest">
                <li class="hover-this cursor-pointer">
                  <a href="#0" class="hover-anim">Facebook</a>
                </li>
                <li class="hover-this cursor-pointer">
                  <a href="#0" class="hover-anim">twitter</a>
                </li>
                <li class="hover-this cursor-pointer">
                  <a href="#0" class="hover-anim">LinkedIn</a>
                </li>
                <li class="hover-this cursor-pointer">
                  <a href="#0" class="hover-anim">Behance</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="column">
              <h6 class="sub-title mb-30">A platform proudly presented by :</h6>
              <p><a
                      href="https://www.linkedin.com/in/manasvi-nawal/"
                      target="_blank"
                    >Manasvi Nawal</a> & <a href="https://www.linkedin.com/in/bhowmikarnab/">Arnab Bhowmik</a> </p>
              <!-- <h5 class="mt-15 underline">
                <a href="#0">+2 456 34324 45</a>
              </h5> -->
            </div>
          </div>
        </div>
      </div>
      <div class="container bord pt-30 pb-30 bord-thin-top">
        <div class="row">
          <div class="col-lg-6">
            <div class="links">
              <ul class="rest">
                <li>
                  <a href="/about" class="animsition-link">FAQ</a>
                </li>
                <li>
                  <a href="/about" class="animsition-link">Careers</a>
                </li>
                <li>
                  <a href="/contact" class="animsition-link">Contact Us</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="copyright d-flex">
              <div class="ml-auto">
                <p class="fz-13">
                  © 2024 Astra is Made with Love for Growth
                 
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
</template>

<script setup>
import { onMounted, onBeforeUnmount } from "vue";

const handleResize = () => {
  if (window.innerWidth > 991) {
    gsap.set(".footer-container", { yPercent: -50 });
    const uncover = gsap.timeline({ paused: true });
    uncover.to(".footer-container", { yPercent: 0, ease: "none" });

    ScrollTrigger.create({
      trigger: "main",
      start: "bottom bottom",
      end: "+=50%",
      animation: uncover,
      scrub: true,
    });
  }
};

onMounted(() => {
  handleResize();
  window.addEventListener("resize", handleResize);
});

onBeforeUnmount(() => {
  window.removeEventListener("resize", handleResize);
});
</script>
