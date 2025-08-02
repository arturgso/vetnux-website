<template>
  <div class="flex items-center gap-2">
    <component :is="props.icon" class="w-4 h-4  text-accent" />
    <span class="text-[13px] text-secondary-text">{{ props.text }}</span>
  </div>
</template>

<script setup lang="ts">
const props = defineProps<{
  icon: Object;
  text: string;
}>();
</script>