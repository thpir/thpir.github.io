<template>
    <div class="education">
      <h3>EDUCATION</h3>
      <div class="timeline">
        <p id="edu-intro">I didn't study software engineering at university. 
                        I have two bachelor degrees. 
                        One in Mechanical Engineering and Production Technologie (graduated in 2012), and one in Energy technology (graduated in 2014). 
                        My interest in software development was always there, but only at a later age I started to realize that this was something I wanted to do for a living. 
                        From then onward I followed many courses online, mainly focussing on app development. 
                        I wanted to gather enough knowledge, so I would get offered a job as an app developer. 
                        This journey started in 2021. 
                        In 2023 I finally got my first job offer as an app developer!
                    </p>
                    <br/>
                    <div class="outer">
                        <div class="card">
                            <div class="info">
                            <div class="title">
                              <h4>Computer Science</h4>
                              <img src="/src/assets/images/software_computer_science.svg"/>
                            </div>
                            <p>When you are learning something new it is best to start at the beginning and build your knowledge from there. 
                                To really understand app-development I first needed to know more about computer science. 
                                <a href="https://cs50.harvard.edu/x/2022/" target="_blank" class="inline_link">Harvard its CS50x course - Introduction to Computer science - </a>
                                was highly rated and seemed the ideal course to me to start my journey as an app developer. 
                                In August 2022, I graduated the course.
                            </p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="info">
                            <div class="title">
                              <h4>Native Android</h4>
                              <img src="/src/assets/images/software_android.svg"/>
                            </div>
                            <p>This is where it all started for me. 
                                Online, I found a short tutorial for a "hello world" app in Android Studio. 
                                Then I followed countless YouTube instructional video's, and not long thereafter I made my own first Android app: a tic-tac-toe game. 
                                There was (and still is) a lot to learn, so I decided to follow the Android fundamental <a href="https://developer.android.com/courses/fundamentals-training/toc-v2" target="_blank" class="inline_link">codelabs</a>. 
                                Next, I followed the <a href="https://www.udacity.com/course/kotlin-bootcamp-for-programmers--ud9011" target="_blank" class="inline_link">Kotlin bootcamp for programmers</a> on Udacity to learn more about Kotlin. 
                                Next on my to-do list is Jetpack Compose! To be continued...
                            </p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="info">
                            <div class="title">
                              <h4>Native iOS</h4>
                              <img src="/src/assets/images/software_apple.svg"/>
                            </div>
                            <p>My path as a native iOS developer only started when I started working as an Android and iOS developer in the research department of the Howest University. 
                                My native experience in iOS is "entry level". To get my native iOS & swift knowledge jumpstarted, I followed Angela's high rated course on Udemy: <a href="https://www.udemy.com/course/ios-13-app-development-bootcamp/" target="_blank" class="inline_link">iOS & Swift - The complete iOS App development bootcamp</a>. 
                                However I haven't gotten to the point yet where I have created a fully finished native iOS application. My focus is cross platform development. 
                                Some native knowledge in Android and iOS is mandatory in my opinion, and that was the main reason I followed this course. 
                            </p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="info">
                            <div class="title">
                              <h4>Cross Platform</h4>
                              <img src="/src/assets/images/software_flutter.svg"/>
                            </div>
                            <p>This is my focus at this moment. I stronly believe that cross platform development is THE standard at this time. 
                                Some frameworks like Flutter and React Native have really shown their potential at this time. 
                                Although native platform knowledge will always be an important "bonus card" in your deck, cross-platform is the direction I'm heading! As cross-platform developer, I chose the flutter framework. 
                                I briefly tried React Native, but after experiencing the Flutter framework I felt more at home. 
                                I started with the Udemy course (Yes, I really like Udemy when I need to learn new stuff...): 
                                <a href="https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/" target="_blank" class="inline_link">Flutter & Dart - The Complete Guide</a>. 
                            </p>
                            </div>
                        </div>
                        <div class="card">
                            <div class="info">
                            <div class="title">
                              <h4>Web</h4>
                              <img src="/src/assets/images/software_vue.svg"/>
                            </div>
                            <p>As an app developer I also wanted to have at least some experience in web development. 
                                Often when creating an application there is the question: should I go for an application or do I just make a web-application? 
                                Also, many cross-platform frameworks like React Native or Ionic are build for people who have experience in Web. 
                                To have at least some knowledge about web development, I did some <a href="https://www.codecademy.com/learn" target="_blank" class="inline_link">Codecademy</a> courses (learn html, CSS3, A-Frame, Javascript, ...) and enrolled my self in two VDAB courses: 
                                <a href="https://www.vdab.be/opleidingen/aanbod/O-AMI-800827/cursus/C-AMI-165240/Webdesign__HTML5_%2526_CSS3_projecten-online" target="_blank" class="inline_link">HTML5 + CSS3</a> and 
                                <a href="https://www.vdab.be/opleidingen/aanbod/O-AMI-800826/cursus/C-AMI-165320/Webdesign__JavaScript_Basis-online" target="_blank" class="inline_link">Javascript</a>. 
                            </p>
                            </div>
                        </div>
                    </div>
                </div>
    </div>
</template>

<style scoped>
  .education h3 {
    margin-bottom: 3vh;
  }
  .education h3, h4{
    color: #F4F4F4;
    font-weight: bold;
    letter-spacing: .5vw;
    text-align: center;
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
  .education {
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

  .education p {
    color: #F4F4F4;
  }

  /* Hide scrollbar for Chrome, Safari and Opera */
  .education::-webkit-scrollbar {
    display: none;
  }
  
  .education a {
    color: #197DE6;
    text-decoration: none;
  }
  
  .education a:hover {
    color: #A82EE4;
    cursor: pointer;
  }
  
  .card {
    position: relative;
  }
  
  /* setting padding based on even or odd */
  .card:nth-child(odd) {
    padding: 30px 0 30px 30px;
  }
  
  .card:nth-child(odd) p, .card:nth-child(odd) h3 {
    float: left;
    text-align: start;
  }
  
  .card:nth-child(even) p, .card:nth-child(even) h3 {
    float: right;
    text-align: start;
  }
  
  .card:nth-child(even) {
    padding: 30px 30px 30px 0;
  }
  .card::before {
    content: "";
    position: absolute;
    width: 50%;
    border: solid #A82EE4;
  }
  
  /* Setting the border of top, bottom, left */
  .card:nth-child(odd)::before {
    left: 0px;
    top: -1px;
    bottom: -1px;
    border-width: 1px 0 1px 1px;
    border-radius: 50px 0 0 50px;
  }

  /* Setting the border of top, bottom, right */
  .card:nth-child(even)::before {
    right: 0;
    top: 0;
    bottom: 0;
    border-width: 1px 1px 1px 0;
    border-radius: 0 50px 50px 0;
  }
  
  /* Removing the border if it is the first card */
  .card:first-child::before {
    border-top: 0;
    border-top-left-radius: 0;
  }
  
  /* Removing the border if it is the last card  and it's odd */
  .card:last-child:nth-child(odd)::before {
    border-bottom: 0;
    border-bottom-left-radius: 0;
  }
  
  /* Removing the border if it is the last card  and it's even */
  .card:last-child:nth-child(even)::before {
    border-bottom: 0;
    border-bottom-right-radius: 0;
  }
  
  .info {
    display: flex;
    flex-direction: column;
    border-radius: 10px;
    padding: 10px;
  }

  .title {
    margin-bottom: 3vh;
    display: flex;
    align-content: center;
  }

  .title img {
    margin-left: 20px;
  }
</style>