<script setup lang="ts">
import { onMounted } from "vue";
import Features from "./components/Features/Features.vue";
import Header from "./components/Header.vue";
import Hero from "./components/Hero.vue";

onMounted(() => {
  if (window.matchMedia("(prefers-color-scheme: dark)").matches) {
    document.documentElement.classList.add("dark");
  } else {
    document.documentElement.classList.remove("dark");
  }
});
</script>

<template>
  <div class="bg-bg h-full font-lato">
    <Header />
    <div class="ssm:mx-[5%] lg:mx-[10%] flex flex-col items-center gap-16">
      <Hero />
      <Features />
    </div>
  </div>
</template>
