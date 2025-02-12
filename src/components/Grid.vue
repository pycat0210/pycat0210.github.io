<script setup lang="ts">
import { type StyleValue } from 'vue';

interface BoxProps {
  min: number
}

const props = defineProps<BoxProps>()
</script>

<template>
  <div class="grid" :style="{display:'grid', gridTemplateColumns:`repeat(auto-fit, minmax(${props.min}px, 1fr))`, margin: '0 auto', gap: '8px'}">
    <slot></slot>
  </div>
</template>

<style scoped>
</style>