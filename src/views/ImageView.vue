<script setup lang="ts">
import Grid from '@/components/Grid.vue';
import Card from '@/components/Card.vue';
import Box from '@/components/Box.vue';

const images = [
  "/images/0b026aa7416d69e6f1ae47003ea7a762.jpg",
  "/images/3f8fb325fdb89c770989a9b82cdc2be6.jpg",
  "/images/73e37ef1d913a3c672123ba230bb1e12.jpg",
  "/images/337bc300d9a762909281689ce752f0b6.jpg",
  "/images/a8791e4551b202305319b01e46e892a2.jpg",
  "/images/dc46205e4e36d60941bb8082c319ff7c.jpg",
  "/images/e75ed03aa69c10802d774bd1417ce4a0.jpg"
]
</script>

<template>
  <main>
    <Grid :min="640">
      <Box v-for="image in images" :style="{margin: '0 auto'}">
        <Card>
          <a :href="image" target="_blank">
            <img loading="lazy" width="640" height="360" :src="image"/>
          </a>
        </Card>
      </Box>
    </Grid>
  </main>
</template>

<style scoped>
</style>