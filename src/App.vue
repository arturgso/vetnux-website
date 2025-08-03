<script setup lang="ts">
import Benefits from "./components/benefits/Benefits.vue";
import Features from "./components/Features/Features.vue";
import Header from "./components/Header.vue";
import Hero from "./components/Hero.vue";
import Layout from "./components/Layout.vue";
import Newsletter from "./components/Newsletter.vue";
</script>

<template>
  <div class="bg-bg h-full font-lato">
    <Header />
    <div class="s flex flex-col items-center gap-16  pb-3">
      <Hero />
      <Features />
      <Benefits />
      <div class="ssm:block lg:hidden">
        <Layout>
          <Newsletter />
        </Layout>
      </div>
      <div class="flex items-center justify-center text-secondary-text">
        <span>Desenvolvido por <a href="http://valkyriesystems.com.br" target="_blank">Valkyrie Systems</a></span>
      </div>
    </div>
  </div>
</template>
