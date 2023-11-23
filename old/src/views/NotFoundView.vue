<template>
    <div class="not-found-view">
      <h1>Page Not Found</h1>
      <h3>404</h3>
    </div>
</template>

<style scoped>
  .not-found-view {
    width: 80%;
    text-align: center;
    z-index: 2;
  }

  .not-found-view h1 {
    color: #F4F4F4;
    font-weight: bold;
    font-size: 6vw;
    letter-spacing: .5vw;
  }

  .not-found-view h3 {
    color: #F4F4F4;
    font-weight: bold;
    letter-spacing: .5vw;
    margin-bottom: 3vh;
    font-size: 28px; /* Default font size */

    /* Media query for even smaller screens */
    @media screen and (max-width: 1000px) {
      font-size: 24px; /* Adjust font size for even smaller screens */
    }

    /* Media query for even smaller screens */
    @media screen and (max-width: 800px) {
      font-size: 20px; /* Adjust font size for even smaller screens */
    }

    /* Media query for even smaller screens */
    @media screen and (max-width: 600px) {
      font-size: 16px; /* Adjust font size for even smaller screens */
    }
  }
</style>