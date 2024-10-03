import 'package:portfolio/models/project.dart';

class ProjectList {
  static final List<Project> projectList = [
    Project(
      title: "My Energy Desk app", 
      description: "My Energy Desk is an application that I developed as the final project for my CS50 course at Harvard. The app is a native Android application written in Java, utilizing Android views. It is designed for individuals who wish to monitor their energy usage on a monthly and yearly basis. The application empowers users to identify anomalies in their energy consumption, providing insights into their yearly usage and offering tips on how to conserve energy. Notably, this app marks my debut on the Play Store. \n\nThe app allows tracking of electricity consumption, electricity production (solar/wind), natural gas, and water usage. Logging is achieved by adding entries (Electricity, water, natural gas) to a local SQLite database. The data is then visually presented on bar graphs, offering users a clear overview of their energy consumption on both a monthly and yearly scale. Furthermore, the database can be exported as an Excel file or a database (.db) file for local backup. In the event of a new phone, users can seamlessly import the database from their local backup, ensuring that their valuable data is retained during the phone transition.", 
      icon: "assets/images/project_energy_desk/project_energy.png",
      downloadLink: "https://play.google.com/store/apps/details?id=com.thpir.myenergydesk&hl=en_US",
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
      route: "/project_energy_desk",),
    // Project(
    //   title: "Toolbox app", 
    //   description: "The Toolbox app is a comprehensive collection of essential tools that are a must-have on every smartphone. Instead of cluttering your device with various small apps, I have consolidated them into one super-app, creating a digital Swiss army knife! The application is developed using Flutter. \n\nAt the time of this release, the app includes: a classic ruler app capable of measuring objects the size of your smartphone in millimeters or inches, a 3D AR ruler app that can measure objects in your room using your camera (also in millimeters or inches), a compass app with GPS locator, a QR code scanner/creator that allows you to scan various types of QR codes and barcodes and enables you to create your own QR codes and export them to your image gallery in .png format, a torch with a Morse code encoder allowing you to translate any text you type into Morse code and signal it with the flashlight on your phone and finally a calculator app.", 
    //   icon: "assets/images/project_toolbox.png",
    //   downloadLink: "https://github.com/thpir/toolbox/releases/tag/Toolbox_V1.1",
    //   id: 1),
  ];
}
