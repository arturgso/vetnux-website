<template>
    <div class="bg-section py-14 w-full">
        <Layout>
            <div class="flex flex-row">
                <div class="flex flex-col gap-3">
                    <h1 class="text-3xl text-text font-bold text-center lg:text-left mb-5">
                        Por que escolher o Vetnux
                    </h1>
                    <p class="text-lg text-secondary-text mb-5 text-center lg:text-left lg:w-[80%]">
                        Feito sob medida para veterinários autônomos e pequenas clínicas que precisam de praticidade,
                        agilidade
                        e
                        foco
                        no cuidado com os pets — sem complicações.
                    </p>
                    <div class="flex flex-col gap-3">
                        <div class="flex items-center gap-2">
                            <CheckCircle class="text-accent w-5 h-5" />
                            <p class="text-sm text-secondary-text">Interface direta que se adapta ao seu ritmo de
                                trabalho.
                            </p>
                        </div>

                        <div class="flex items-center gap-2">
                            <CheckCircle class="text-accent w-5 h-5" />
                            <p class="text-sm text-secondary-text">Sincronização automática para acessar dados de onde
                                estiver.
                            </p>
                        </div>

                        <div class="flex items-center gap-2">
                            <CheckCircle class="text-accent w-5 h-5" />
                            <p class="text-sm text-secondary-text">Tudo salvo na nuvem sem que você precise se
                                preocupar.
                            </p>
                        </div>

                        <div class="flex items-center gap-2">
                            <CheckCircle class="text-accent w-5 h-5" />
                            <p class="text-sm text-secondary-text">Melhorias constantes com base no que os profissionais
                                pedem.
                            </p>
                        </div>

                        <div class="flex items-center gap-2">
                            <CheckCircle class="text-accent w-5 h-5" />
                            <p class="text-sm text-secondary-text">Continue trabalhando mesmo sem internet, sem
                                interrupções.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="ssm:hidden lg:block">
                    <Newsletter />
                </div>
            </div>
        </Layout>

    </div>



</template>
<script setup lang="ts">
import { CheckCircle } from 'lucide-vue-next';
import Layout from '../Layout.vue';
import Newsletter from '../Newsletter.vue';

</script>