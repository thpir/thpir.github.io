<script setup>
  import { RouterLink } from 'vue-router'

  import logoUrl from '@/assets/images/logo.png'
</script>

<template>
  <div class="navbar">
    <img :src="logoUrl" alt="THPIR logo" title="THPIR logo" height="50" />
    <div class="navbar-links">
      <RouterLink active-class="active" to="/"><div class="link"><img src="/src/assets/images/icon_home_white_24dp.svg"/><p>Home</p></div></RouterLink>
      <RouterLink active-class="active" to="/about"><div class="link"><img src="/src/assets/images/icon_person_white_24dp.svg"/><p>about</p></div></RouterLink>
      <RouterLink active-class="active" to="/education"><div class="link"><img src="/src/assets/images/icon_school_white_24dp.svg"/><p>Education</p></div></RouterLink>
      <RouterLink active-class="active" to="/projects"><div class="link"><img src="/src/assets/images/icon_workspace_premium_white_24dp.svg"/><p>Projects</p></div></RouterLink>
    </div>
  </div>
</template>

<style scoped>
  a { 
    color: #F4F4F4;
    text-decoration: none; 
  }

  p {
    padding: 10px;
    font-weight: bold;
    text-align: center;
    vertical-align: middle;
  }

  .navbar {
    position: absolute;
    display: flex;
    align-items: center;
    top: 0px;
    width: 100vw;
    padding: 5px 5px 5px 5px;
    background: linear-gradient(to top, rgba(4, 4, 10, .5), rgba(4, 4, 10, 1), rgba(4, 4, 10, 1)); /* Define a vertical gradient from fully opaque (1) to fully transparent (0) */
    z-index: 2;
  }

  .navbar-links {
    margin-left: auto;
    margin-right: 0px;
    float: right;
    text-decoration: none;
    display: flex;
  }

  .link {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-left: 5px;
    margin-right: 5px;
  }

  a:hover {
    border-top: 1px solid #197DE6;
    border-bottom: 1px solid #197DE6;
    cursor: pointer;
  }

  a.active {
    border-top: 1px solid #A82EE4;
    border-bottom: 1px solid #A82EE4;
  }

  /* Media query for screens smaller than 600px */
  @media (max-width: 800px) {
    p {
      display: none;
    }

    a:hover {
    border-top: none;
    border-bottom: none;
    cursor: pointer;
    }

    a.active {
      border-top: none;
      border-bottom: none;
    }
  }
</style>