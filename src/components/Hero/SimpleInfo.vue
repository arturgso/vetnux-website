<template>
  <div class="flex items-center gap-2">
    <component :is="props.icon" class="w-4 h-4 lg:w-5 lg:h-5 text-accent" />
    <span class=" text-sm text-secondary-text">{{ props.text }}</span>
  </div>
</template>

<script setup lang="ts">
const props = defineProps<{
  icon: Object;
  text: string;
}>();
</script>