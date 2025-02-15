<script setup lang="ts">
import Box from '@/components/Box.vue';
import Card from '@/components/Card.vue';
import Link from '@/components/Link.vue';
</script>

<template>
  <main :style="{height:'100%'}">
    <Box :style="{height:'100%', display:'flex', flexDirection:'column', alignItems:'center'}">
      <Box :style="{flexGrow:1}"/>
      <Box :style="{display:'flex'}">
        <Box class="avatar" :style="{display:'flex',  flexDirection:'column', alignItems:'center', gap:'8px'}"> 
          <img src="/favicon.jpg" :style="{width:'128px', height:'128px', borderRadius:'32px'}">
          <Box :style="{color:'white'}"> 萌萌磷叶石 </Box>
          <Box>
            <Link href="https://github.com/phos2023" target="_blank">GitHub</Link>
            /
            <Link href="https://phos2023.github.io/blog/" target="_blank">Blog</Link>
          </Box>
        </Box>
      </Box>
      <Box :style="{flexGrow:1}"/>
    </Box>
  </main>
</template>

<style scoped>
.avatar:hover {
  transform: scale(1.2);
  transition: all 200ms ease-in-out;
}
</style>