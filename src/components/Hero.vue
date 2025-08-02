<template>
    <div class="flex flex-col items-center justify-center gap-8 text-text mt-10">
        <div class="flex flex-col text-center gap-5">
            <h1 class="text-4xl font-bold">
                Conheça o
                <span style="
                    background: linear-gradient(45deg, #facc15, #fb923c);
                    background-clip: text;
                    -webkit-text-fill-color: transparent;
                    display: inline-block;
                ">
                    VetNux
                </span>
            </h1>
            <p class="text-lg text-secondary-text">
                Transforme o cuidado com os pets em algo simples, inteligente e pessoal.
                Vetnux é o app feito para veterinários autônomos, estudantes que querem
                centralizar e organizar tudo em um só lugar.
            </p>
        </div>
        <div class="flex gap-1 items-center flex-col ">
            <SimpleInfo :icon="Clock" text="Lançamento ainda em 2025" />
            <SimpleInfo :icon="UsersRound" text="Completamente gratuito durante a beta" />
            <SimpleInfo :icon="CheckCircle" text="Inscreva-se e seja um dos primeiros a testar" />
        </div>
    </div>
</template>

<script setup lang="ts">
import { CheckCircle, Clock, UsersRound } from "lucide-vue-next";
import SimpleInfo from "./Hero/SimpleInfo.vue";
</script>

<style></style>
