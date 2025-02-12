<script setup lang="ts">
import { type StyleValue } from 'vue';

interface CardProps {
  style?:StyleValue
}

const props = defineProps<CardProps>()
</script>

<template>
  <div class="card" :style="props.style">
    <slot></slot>
  </div>
</template>

<style scoped>
  .card {
    color: #fff;
    background: rgba(0, 0, 0, 0.5);
    backdrop-filter: blur(10px);
    padding: 16px;
  }
</style>