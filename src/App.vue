<script setup lang="ts">
import { onMounted } from "vue";
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
  <div class="bg-bg h-screen font-lato">
    <Header />
    <div class="ssm:mx-[5%] lg:mx-[10%]">
      <Hero />
    </div>
  </div>
</template>
