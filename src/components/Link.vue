<script setup lang="ts">
import { RouterLink } from 'vue-router'
import { type StyleValue } from 'vue';
interface LinkProps {
  to?:string;
  href?:string;
  target?:string;
  style?:StyleValue;
}

const props = defineProps<LinkProps>()
</script>

<template>
  <RouterLink v-if="props.to" class="link" :to="props.to">
    <slot></slot>
  </RouterLink>
  <a v-else class="link" :href="props.href" :target="props.target" :style="props.style">
    <slot></slot>
  </a>
</template>

<style scoped>
  .link {
    color: #aaa;
    text-decoration: none;
  }

  .link:hover {
    color: aquamarine;
  }
</style>