import 'package:flutter/material.dart';
import 'package:portfolio/global_variables.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getScreenPadding(width), vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'ABOUT ME',
                style: TextStyle(
                    color: onPrimaryActive,
                    fontSize: getSubtitleFontSize(width),
                    fontWeight: FontWeight.bold,
                    letterSpacing: getSubtitleFontSize(width) * 0.15),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getDividerHeight(width),
              ),
              const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/profile_picture.png'),
                radius: 120,
              ),
              SizedBox(
                height: getDividerHeight(width),
              ),
              const Text(
                "Hello! I'm Thijs Pirmez, an app developer with a passion for creating innovative solutions. My journey into software development began as a self-taught Android developer—initially a hobby that evolved into a fulfilling career. Prior to venturing into the world of coding, I worked as a technician in wind turbines and held roles as a Project Manager and R&D engineer in the automotive industry. It was during my time as an R&D engineer that I encountered Android development. The moment I started exploring Java and Android Studio, I found myself captivated, dedicating nearly all my free time to mastering the art of developing Android applications.",
                style: TextStyle(
                    color: onPrimaryActive,
                    fontSize: 16,
                    letterSpacing: 1.5),
              ),
              SizedBox(
                height: getDividerHeight(width),
              ),
              const Text(
                "I've always held a fascination for software development and have been a fervent smartphone enthusiast since the days of my first Blackberry. Despite not pursuing software engineering in my university studies, the realm of software development remained somewhat of a 'black box' to me during that time. It wasn't until 2021 that I delved into the captivating world of software engineering. In August of that year, I discovered an online tutorial guiding me through the process of creating an app in Android Studio. Soon after, I proudly developed my first app. Two years after that initial foray into Android app development, I took a leap of faith, transitioning from an R&D engineer to an Android & iOS developer. Since making that decision, I've been immersed in this role, primarily crafting applications using the Flutter framework. However, my skill set extends beyond Flutter, encompassing native Android, iOS, and web development.",
              style: TextStyle(
                    color: onPrimaryActive,
                    fontSize: 16,
                    letterSpacing: 1.5),
              )
            ],
          ),
        ),
      ),
    );
  }
}
