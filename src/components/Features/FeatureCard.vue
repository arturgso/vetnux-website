<template>
    <div
        class="flex flex-col justify-evenly bg-card h-44 p-4 rounded-xl border-2 border-card-border hover:border-accent hover:drop-shadow-md transition-colors duration-150 ease-linear">
        <div class="flex items-center gap-3 mb-3">
            <div class="bg-bg p-2 rounded-md shadow-md">
                <component :is="props.icon" :class="['w-7 h-7', iconColor]" />
            </div>
            <h3 class="text-text text-lg capitalize my-2 font-bold">{{ props.title }}</h3>

        </div>
        <p class="text-secondary-text">{{ props.text }}</p>
    </div>
</template>

<script setup lang="ts">
const props = defineProps<{
    icon: Object
    title: String
    text: String
    iconColor: String
}>()
</script>