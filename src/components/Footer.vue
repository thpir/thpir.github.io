<template>
  <div class="footer">
    <div>
      <div class="triangle-right"></div>
    </div>
    <div class="contact">
      <div class="social-icons">
        <a href="https://be.linkedin.com/in/thijs-pirmez-973327230" target="_blank" class="fa fa-linkedin"></a>
        <a href="https://g.dev/thpir" target="_blank" class="fa fa-android"></a>
        <a href="https://github.com/thpir" target="_blank" class="fa fa-github"></a>
      </div>
        <p>Designed & Built by Thijs Pirmez</p>
    </div>
  </div>
</template>

<style scoped>
  .footer { 
    position: absolute;
    bottom: 0px;
    text-align: center;
    z-index: 1;
  }
    
  .footer p {
    color: #F4F4F4;
    padding: 0;
    text-align: center;
    border: none;
    padding-bottom: 20px;
  }

  .triangle-right {
    position: relative;
    top: 0;
    right: 0;
    width: 0;
    height: 0;
    border-left: 100vw solid transparent;
    border-right: 0vw solid transparent;
    border-bottom: 40px solid rgba(4, 4, 10, .5);
  }


  .contact {
    background: linear-gradient(to bottom, rgba(4, 4, 10, .5), rgba(4, 4, 10, 1), rgba(4, 4, 10, 1)); /* Define a vertical gradient from fully opaque (1) to fully transparent (0) */
  }
    
  .social-icons {
    padding: 0;
    padding-bottom: 20px;
    text-align: center;
  }
    
  /* Style icons */
  .fa {
    font-size: 30px;
    width: 50px;
    text-align: center;
    text-decoration: none;
  }
    
  /* Add a hover effect */
  .fa:hover {
    text-decoration: none;
    color: #197DE6;
    cursor: pointer;
  }
    
  /* Set a specific color for each brand */
  .fa-linkedin, .fa-android, .fa-github {
    color: #F4F4F4;
  }
</style>