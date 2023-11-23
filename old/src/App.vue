<script setup>
  import { RouterView } from 'vue-router'
  import Navbar from './components/Navbar.vue'
  import Background from './components/Background.vue'
  import Footer from './components/Footer.vue'
</script>

<template>
  <main>
    <Navbar/>
    <Background/>
    <RouterView/>
    <Footer/>
  </main>
</template>

<style scoped>
  main {
    background-color: #1a1a36;
    height: 100vh;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
</style>
