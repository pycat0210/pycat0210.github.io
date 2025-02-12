<script setup lang="ts">
import { type StyleValue } from 'vue';

interface BoxProps {
  img:string;
}

const props = defineProps<BoxProps>()
</script>

<template>
  <div class="background" :style="{backgroundImage: `url(${props.img})`}">
    <slot></slot>
  </div>
</template>

<style scoped>
.background {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: -1;
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
}
</style>