import 'package:portfolio/models/education.dart';

class EducationList {
  static final List<Education> educationList = [
    Education(
      title: "Computer Science", 
      body: "When embarking on a learning journey, starting from the basics and progressively building knowledge is paramount. To gain a comprehensive understanding of app development, I recognized the need to delve deeper into computer science. Harvard's CS50x course, 'Introduction to Computer Science,' came highly recommended and appeared to be the perfect starting point for my journey as an app developer. In August 2022, I successfully completed and graduated from the course.", 
      icon: "assets/images/software_computer_science.svg"
    ),
    Education(
      title: "Native Android", 
      body: "This is where it all started for me. Online, I stumbled upon a short tutorial for a 'hello world' app in Android Studio. Subsequently, I delved into countless YouTube instructional videos, and not long thereafter, I created my first Android app: a tic-tac-toe game. With much left to learn (and still ongoing), I decided to follow the Android Fundamental Codelabs. Later, I pursued the Kotlin Bootcamp for Programmers on Udacity to deepen my understanding of Kotlin. Up next on my to-do list is Jetpack Compose! To be continued...", 
      icon: "assets/images/software_android.svg"
    ),
    Education(
      title: "Native iOS", 
      body: "My journey as a native iOS developer began when I joined the research department of Howest University as an Android and iOS developer. My experience with native iOS development is at the 'entry level.' To kickstart my knowledge in native iOS and Swift, I enrolled in Angela's highly-rated course on Udemy: 'iOS & Swift - The Complete iOS App Development Bootcamp.' However, I haven't yet reached the point where I've created a fully finished native iOS application. My primary focus is on cross-platform development. I believe that possessing some native knowledge in both Android and iOS is essential, which was the main motivation behind taking this course.", 
      icon: "assets/images/software_apple.svg"
    ),
    Education(
      title: "Cross Platform", 
      body: "This is my current focus. I strongly believe that cross-platform development is the standard in today's tech landscape. Frameworks like Flutter and React Native have truly demonstrated their potential. While native platform knowledge will always be an important 'bonus card' in your deck, my direction is towards cross-platform development. As a cross-platform developer, I've chosen the Flutter framework. I briefly experimented with React Native, but after experiencing the Flutter framework, I felt more at home. I began with the Udemy course (yes, I really like Udemy when I need to learn new things): 'Flutter & Dart - The Complete Guide.'", 
      icon: "assets/images/software_flutter.svg"
    ),
    Education(
      title: "Web", 
      body: "As an app developer, I also wanted to gain some experience in web development. Often, when creating an application, the question arises: should I go for a native application or opt for a web application? Additionally, many cross-platform frameworks, such as React Native or Ionic, are built for individuals with web development experience. To ensure I had at least some knowledge of web development, I completed several Codecademy courses (learning HTML, CSS3, A-Frame, Javascript, ...), enrolled myself in two VDAB courses: HTML5 + CSS3 and Javascript, and participated in a bootcamp course about Vue on YouTube.", 
      icon: "assets/images/software_vue.svg"
    ),
  ];
}
