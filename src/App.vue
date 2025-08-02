<script setup lang="ts">

import { onMounted } from 'vue';

onMounted(() => {
  if (window.matchMedia('(prefers-color-scheme: dark)').matches) {
    document.documentElement.classList.add('dark')
  } else {
    document.documentElement.classList.remove('dark')
  }
})

</script>

<template>
  <div class="bg-bg h-screen">
    <h1 class="text-2xl text-text">
      Hello, world
    </h1>
  </div>
</template>

