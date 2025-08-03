<script setup lang="ts">
import { Moon, PawPrint, Sun } from "lucide-vue-next";
import { onMounted, ref } from 'vue';
import Layout from "./Layout.vue";

const isDark = ref(false);

function toggleTheme() {
  isDark.value = !isDark.value

  const root = document.documentElement
  if (isDark.value) {
    root.classList.add('dark')
    localStorage.setItem('theme', 'dark');
  } else {
    root.classList.remove('dark')
    localStorage.setItem('theme', 'light')
  }
}

onMounted(() => {
  const saved = localStorage.getItem('theme');
  if (saved === 'dark' || (!saved && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
    isDark.value = true
    document.documentElement.classList.add('dark');
  }
})
</script>

<template>
  <Layout>
    <div class="py-4 flex items-center ssm:justify-center md:justify-between">
      <div class="flex items-center gap-3">
        <div class="h-10 w-10 rounded-full flex items-center justify-center"
          style="background: linear-gradient(45deg, #facc15, #fb923c)">
          <PawPrint />
        </div>
        <h1 class="text-accent text-2xl">
          <span class="text-text">Vet</span>nux
        </h1>
      </div>
      <button @click="toggleTheme">
        <component :is="isDark ? Sun : Moon" class="text-text" />
      </button>
    </div>

  </Layout>
</template>