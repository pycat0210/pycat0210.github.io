<script setup lang="ts">
import { type StyleValue } from 'vue';

interface BoxProps {
  style?:StyleValue
}

const props = defineProps<BoxProps>()
</script>

<template>
  <div class="box" :style="props.style">
    <slot></slot>
  </div>
</template>

<style scoped>
.box {
  display: 'block';
}
</style>