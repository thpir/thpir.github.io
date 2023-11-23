<template>
    <div class="home">
      <h1>THIJS PIRMEZ</h1>
      <h3>APP DEVELOPER</h3>
      <div class="cite">
        <cite>&#34;I think smartphones are modern man's Swiss army knife.
        When it comes to developing applications to make one's live easier, 
        the possibilities are only limited by the developer's imagination!&#34;
      </cite>
      </div>
    </div>
</template>

<style scoped>
  .home {
    width: 80%;
    text-align: center;
    z-index: 2;
  }

  .home h1 {
    color: #F4F4F4;
    font-weight: bold;
    font-size: 6vw;
    letter-spacing: .5vw;
  }

  .home h3 {
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

  .cite {
    color: #F4F4F4;
    letter-spacing: .15vw;
    width: 80%;
    max-width: 500px;
    margin: 3vh auto;
    padding-top: 2vh;
    padding-bottom: 2vh;
    border-top: #A82EE4 1px solid;
    border-bottom: #A82EE4 1px solid;
  }
</style>