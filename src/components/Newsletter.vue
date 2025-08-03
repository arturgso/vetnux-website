<template>
    <div
        class="bg-card p-4 flex flex-col items-center justify-between gap-4 rounded-xl border-2 border-card-border text-text">
        <Mail :size="80" class="text-accent" />
        <h1 class="font-bold text-xl">Seja o primeiro a saber!</h1>
        <p class="text-secondary-text text-center">Cadastre seu email e receba atualizações sobre o desenvolvimento,
            acesso ao
            beta e
            novidades do Vetnux.</p>
        <form @submit.prevent="submitEmail" class="w-full flex flex-col gap-4">
            <input v-model="email" type="email" placeholder="seu@email.com"
                class="w-full p-2 bg-bg outline-none rounded-md text-text border border-card-border" required />
            <button :disabled="loading"
                class="w-full bg-accent p-1 rounded-md font-bold text-xl hover:bg-accent-hover transition-all duration-100 ease-in text-white">
                {{ loading ? "Enviando..." : "Cadastrar" }}
            </button>
        </form>
    </div>
    <notifications />
</template>

<script setup lang="ts">
import { notify } from '@kyvg/vue3-notification';
import axios from 'axios';
import { Mail } from 'lucide-vue-next';
import { ref } from 'vue';

const email = ref('');
const loading = ref(false);

const submitEmail = async () => {
    if (!email.value) {
        notify({
            type: 'error',
            title: 'Erro',
            text: 'Por favor, insira um email válido'
        });
        return;
    }

    loading.value = true;

    try {
        const response = await axios.post(`${import.meta.env.VITE_API_BASE_URL}/subscribe`, {
            email: email.value
        });

        if (response.status === 200 || response.status === 201) {
            notify({
                type: 'success',
                title: 'Sucesso!',
                text: 'Email cadastrado com sucesso! Você receberá nossas atualizações em breve.'
            });
            email.value = '';
        }
    } catch (error: any) {
        console.error('Erro ao cadastrar email:', error);

        if (error.response?.status === 409) {
            notify({
                type: 'warn',
                title: 'Aviso',
                text: 'Este email já está cadastrado em nossa lista!'
            });
        } else if (error.response?.status === 400) {
            notify({
                type: 'error',
                title: 'Erro',
                text: 'Email inválido. Por favor, verifique o formato.'
            });
        } else {
            notify({
                type: 'error',
                title: 'Erro',
                text: 'Erro ao cadastrar email. Tente novamente mais tarde.'
            });
        }
    } finally {
        loading.value = false;
    }
};

</script>