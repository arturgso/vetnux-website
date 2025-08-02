<template>
    <div>
        <div
            class="bg-card p-4 flex flex-col items-center justify-between gap-4 rounded-xl border-2 border-card-border text-text">
            <Mail :size="80" class="text-accent" />
            <h1 class="font-bold text-xl">Seja o primeiro a saber!</h1>
            <p class="text-secondary-text text-center">Cadastre seu email e receba atualizações sobre o desenvolvimento,
                acesso ao
                beta e
                novidades do Vetnux.</p>
            <input v-model="email" type="email" placeholder="seu@email.com"
                class="w-full p-2 bg-bg outline-none rounded-md text-text" />
            <button
                class="w-full bg-accent p-1 rounded-md font-bold text-xl hover:bg-accent-hover transition-all duration-100 ease-in">Cadastrar</button>
        </div>
    </div>
</template>

<script setup lang="ts">
import { Mail } from 'lucide-vue-next';
import { ref } from 'vue';

const email = ref('');

</script>