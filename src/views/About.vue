<template>
    <div class="about">
      <h3>ABOUT ME</h3>
      <img src="../../public/images/profile_picture.png"/>
      <div class="about-text">
        <p>Hi! My name is Thijs Pirmez and I'm an app developer and front-end web developer. 
          I started my software career as a self-thought Android developer. 
          Not as a career, but more as a hobby. 
          In fact, I've been working as a technician in Wind turbines and a Project Manager and R&D engineer in the automotive industry prior to becoming a software developer. 
          It was during my time as an R&D engineer that I first encountered Android development. 
          And as soon as I started playing around with Java and Android Studio, I was hooked and put almost all my free time into learning how to develop Android applications. 
        </p>
        <br>
        <p>
          I have always had a fascination for software development and am (ever since I got my first Blackberry) a huge enthusiast for smartphones. 
          But I did not study software-engineering at my university. 
          Back then, software-development was like a “black-box” to me. 
          It is only in 2021 that I started to explore the fascinating world of software engineering. 
          In August 2021, I found this tutorial online to create an app in Android Studio. 
          Not long thereafter I made my first 
          <a href="https://github.com/thpir/Tic-Tac-Toe/releases/tag/Tic-Tac-Toe_v1.0" target="_blank" class="inline_link">app</a>. 
          Two years after my first Android App, I decided to take a leap of faith, and switch from R&D engineer to Android & iOS developer. 
          I have been working under this title ever since! 
          I now mainly create applications using the Flutter framework, but I have experience with native Android an iOS and web development.
        </p>
      </div>
    </div>
</template>

<style scoped>
  .about a {
    text-decoration: none;
    color: #197DE6;
  }

  .about a:hover {
    color: #A82EE4;
    cursor: pointer;
  }
  .about img {
    width: 100%;
    max-width: 300px;
    display: flex;
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 30px;
    border-radius: 5px;
  
    /* Creating the 3D effect on the image */
    --x:5px;
    --y:10px;
    clip-path:polygon(
        0 calc(var(--x) + var(--y)),var(--y) var(--y),
        calc(100% - var(--y)) var(--y),calc(100% - var(--y)) calc(100% - var(--y)),
        var(--y) calc(100% - var(--y)),0 calc(100% - var(--x) - var(--y)));
    transform-origin:right;
    transform:perspective(1000px) rotateY(20deg);
    outline: var(--y) solid rgba(0,0,0,0.4);
    outline-offset: calc(-1*var(--y));

    /* Media query for even smaller screens */
    @media screen and (min-width: 600px) {
      float: left;
      margin-right: 5vw;
      margin-left: 0px;
      margin-bottom: 30px;

      --x:10px;
      --y:20px;
      clip-path:polygon(
          0 calc(var(--x) + var(--y)),var(--y) var(--y),
          calc(100% - var(--y)) var(--y),calc(100% - var(--y)) calc(100% - var(--y)),
          var(--y) calc(100% - var(--y)),0 calc(100% - var(--x) - var(--y)));
      transform-origin:right;
      transform:perspective(1000px) rotateY(20deg);
      outline: var(--y) solid rgba(0,0,0,0.4);
      outline-offset: calc(-1*var(--y));
    }
  }

  .about h3 {
    color: #F4F4F4;
    text-align: center;
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

  .about-text {
    color: #F4F4F4;
  }
  .about {
    padding-top: 10vh;
    padding-bottom: 20vh;
    height: 100vh;
    overflow: scroll;
    width: 80%;
    z-index: 1;
    letter-spacing: 1px;

    /* Hide scrollbar */
    -ms-overflow-style: none;  /* IE and Edge */
    scrollbar-width: none;  /* Firefox */

    @media screen and (min-width: 1000px) {
      width: 70%;
    }

    @media screen and (min-width: 1100px) {
      width: 60%;
    }

    @media screen and (min-width: 1200px) {
      width: 50%;
    }
  }

  /* Hide scrollbar for Chrome, Safari and Opera */
  .about::-webkit-scrollbar {
    display: none;
  }
</style>