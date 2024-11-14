import 'package:portfolio/models/app_store_link.dart';
import 'package:portfolio/models/project.dart';

class ProjectList {
  static final List<Project> projectList = [
    Project(
      title: "My Energy Desk app",
      description:
          "My Energy Desk is an application that I developed as the final project for Harvards online CS50 course. The app was originally native Android application written in Java, utilizing Android views. Later, I re-developed the app in Flutter. \n\nThe app is an energy meter logger tool designed for people who want to log and monitor their energy consumption at home on a weekly, monthly or yearly basis. There are four types of energy that you can keep track of: electricity consumption, natural gas consumption, water consumption and grid injection (energy generated at home and injected into the grid). By entering your meter readings periodically, you will build a database containing your meter readings. That data is used to build statistical graphs of your usage over the years. After some time, you will be able to know how your energy usage changes over the years and be able to act if needed. The app is 100% free of charge, advertisement-free and you can export your database to Excel at any time!",
      icon: "assets/images/project_energy_desk/project_energy.png",
      downloadLinks: [
        const AppStoreLink(
          "https://play.google.com/store/apps/details?id=com.thpir.myenergydesk&hl=en_US",
          appStoreButtonImage: "assets/badges/google_play_badge.png",
        )
      ],
      id: 0,
      company: "Personal project",
      screenshots: [
        "assets/images/project_energy_desk/Monthly and yearly overview of your usage.png",
        "assets/images/project_energy_desk/Add your meter readings quickly and easily.png",
        "assets/images/project_energy_desk/Chronological overview of you entries.png",
        "assets/images/project_energy_desk/Dark mode available.png",
        "assets/images/project_energy_desk/Edit your meter entries.png",
        "assets/images/project_energy_desk/Get notified.png",
        "assets/images/project_energy_desk/Personalize your app.png",
      ],
      route: "/project_energy_desk",
    ),
    // Project(
    //   title: "Toolbox app",
    //   description: "The Toolbox app is a comprehensive collection of essential tools that are a must-have on every smartphone. Instead of cluttering your device with various small apps, I have consolidated them into one super-app, creating a digital Swiss army knife! The application is developed using Flutter. \n\nAt the time of this release, the app includes: a classic ruler app capable of measuring objects the size of your smartphone in millimeters or inches, a 3D AR ruler app that can measure objects in your room using your camera (also in millimeters or inches), a compass app with GPS locator, a QR code scanner/creator that allows you to scan various types of QR codes and barcodes and enables you to create your own QR codes and export them to your image gallery in .png format, a torch with a Morse code encoder allowing you to translate any text you type into Morse code and signal it with the flashlight on your phone and finally a calculator app.",
    //   icon: "assets/images/project_toolbox.png",
    //   downloadLink: "https://github.com/thpir/toolbox/releases/tag/Toolbox_V1.1",
    //   id: 1),
  ];
}
