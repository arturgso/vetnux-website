<template>
    <div class="flex flex-col gap-10">
        <h1 class="text-text text-3xl text-center font-bold">
            Funcionalidades Principais
        </h1>
        <div class="flex flex-col gap-4">
            <FeatureCard :icon="Heart" title="gestão de pets"
                text="Cadastre e gerencie todos os pets com informações detalhadas, histórico médico e fotos."
                icon-color="text-[#ef4444]" />

            <FeatureCard :icon="Calendar" title="agendamento"
                text="Sistema integrado de agendamento com lembretes automáticos para consultas."
                icon-color="text-[#22c55e]" />

            <FeatureCard :icon="ChartColumn" title="relatórios e insights"
                text="Dashboard com métricas e insights para otimizar o atendimento veterinário."
                icon-color="text-[#a855f7]" />

            <FeatureCard :icon="Shield" title="segurança total"
                text="Dados protegidos com criptografia e conformidade total com a LGPD." icon-color="text-[#f59e0b]" />

            <FeatureCard :icon="Smartphone" title="multi-plataforma"
                text="Acesse de qualquer dispositivo: desktop, tablet ou smartphone." icon-color="text-[#6366f1]" />

        </div>
    </div>
</template>
<script setup lang="ts">
import { Calendar, ChartColumn, Heart, Shield, Smartphone } from 'lucide-vue-next';
import FeatureCard from './FeatureCard.vue';

</script>
