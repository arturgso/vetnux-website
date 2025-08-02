<script setup lang="ts">
import { PawPrint } from "lucide-vue-next";
</script>

<template>
  <div
    class="mx-[10%] py-4 flex items-center ssm:justify-center md:justify-start"
  >
    <div class="flex items-center gap-3">
      <div
        class="h-10 w-10 rounded-full flex items-center justify-center"
        style="background: linear-gradient(45deg, #facc15, #fb923c)"
      >
        <PawPrint />
      </div>
      <h1 class="text-accent text-2xl">
        <span class="text-text">Vet</span>nux
      </h1>
    </div>
  </div>
</template>