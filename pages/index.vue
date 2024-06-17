<template>
  <CommonLoader />
  <div id="smooth-wrapper">
    <div id="smooth-content">
      <CommonNavbar />
      <CommonMenu />
      
      <main class="main-bg">
        <div class="main-box main-bg ontop">
        <PreviewHeader />
        <LandingWorks />
        <LandingBlog />
      </div>
        <!-- <PreviewPortfolio /> -->
      </main>
      <!-- <PreviewFooter /> -->
      <CommonFooter2 />
    </div>
  </div>
</template>

<script setup>
//= Page Metadata
definePageMeta({
  layout: "preview",
});
//= Page Head
useHead({
  titleTemplate: `%s - Home`,
  link: [
    {
      rel: "stylesheet",
      href: '/assets/css/base.css'
    }
  ],
  script: [
  { src: "/assets/js/TweenMax.min.js" },
    { src: "/assets/js/charming.min.js" },
    { src: "/assets/js/smoother-script.js", defer: true }
  ]
  
});
</script>
