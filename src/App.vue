<script setup lang="ts">
import Background from '@/components/Background.vue'
import Box from '@/components/Box.vue'
import Card from '@/components/Card.vue'
import Link from '@/components/Link.vue'
import GitHubIcon from '@/assets/icons/GitHubIcon.vue'
import { RouterView } from 'vue-router'
</script>

<template>
  <Background img="/background.jpg"/>
  <Box :style="{display:'flex', height:'100%',  flexDirection:'column'}">
    <header>
      <Card :style="{display:'flex', alignItems:'center'}">
        <Box :style="{display:'flex', alignItems:'center', gap:'8px'}">
          <Link to="/">主页</Link>
          /
          <Link to="/images">壁纸</Link>
        </Box>
        <span style="flex-grow: 1;"></span>
        <Link href="https://github.com/pycat0210/pycat0210.github.io" target="_blank"><GitHubIcon/></Link>
      </Card>
    </header>
      <Box :style="{flexGrow:1, margin:'16px'}">
        <RouterView />
      </Box>
    <footer>
      <Card>
        友情链接：<Link href="https://hubenchang0515.github.io/">Plan C 的主页</Link>
      </Card>
    </footer>
  </Box>
</template>

<style>
</style>
