import 'package:portfolio/models/app_store_link.dart';
import 'package:portfolio/models/project.dart';

class ProjectList {
  static final List<Project> projectList = [
    Project(
      title: "My Energy Desk app",
      description:
          "My Energy Desk is an application that I developed as the final project for Harvards online CS50 course. The app was originally native Android application written in Java, utilizing Android views. Later, I re-developed the app in Flutter. \n\nThe app is an energy meter logger tool designed for people who want to log and monitor their energy consumption at home on a weekly, monthly or yearly basis. There are four types of energy that you can keep track of: electricity consumption, natural gas consumption, water consumption and grid injection (energy generated at home and injected into the grid). By entering your meter readings periodically, you will build a database containing your meter readings. That data is used to build statistical graphs of your usage over the years. After some time, you will be able to know how your energy usage changes over the years and be able to act if needed. The app is 100% free of charge, advertisement-free and you can export your database to Excel at any time!",
      icon: "assets/images/project_energy_desk/app_icon.webp",
      downloadLinks: [
        const AppStoreLink(
          "https://play.google.com/store/apps/details?id=com.thpir.myenergydesk&hl=en_US",
          appStoreButtonImage: "assets/badges/google_play_badge.png",
        )
      ],
      id: 0,
      company: "Personal project",
      screenshots: [
        "assets/images/project_energy_desk/screenshot_1.webp",
        "assets/images/project_energy_desk/screenshot_2.webp",
        "assets/images/project_energy_desk/screenshot_3.webp",
        "assets/images/project_energy_desk/screenshot_4.webp",
        "assets/images/project_energy_desk/screenshot_5.webp",
        "assets/images/project_energy_desk/screenshot_6.webp",
        "assets/images/project_energy_desk/screenshot_7.webp",
      ],
      route: "/project_energy_desk",
    ),
    Project(
      title: "Silo Connect 2", 
      description: 'Lambrecht Constructie nv designs bulk tanks for the transport of various dry bulk products, including animal feed, grains and sugar. The family business, active for 50 years, strives for high-quality customized vehicles. The bulk tanks have a semi-automatic unloading system called "Silo CoNNect", which helps prevent incorrect unloadings. The system includes a trailer cabinet with a screen and control panel and a tag reader. The tag reader is attached to the silo that is wirelessly connected to the trailer and checks whether the product is pumped into the correct silo.\n\nThe company wanted to develop a new system where farmers/silo owners have no extra work, administration, or hardware costs. Tag readers are currently purchased by the customer, and each silo must be provided with a tag. Customers only want to pay for the product and service, while the responsibility for correct unloading lies with the trailer owner. The challenge was to create a system without requiring customers to attach tags to each silo but still guarantee a quality unloading process.\n\nOur solution:\n\nThe project involved the development of a smartphone application using AI/ML to automatically read the silo number on the silo and verify via object detection whether the trailer is connected to the correct silo. Our solution was designed to work on existing silo installations without any modifications. The choice of a smartphone as a device was motivated by its cost-effectiveness and ease of distribution. The Flutter framework was used to develop the application.\n\nTechnology solutions include the use of machine learning, specifically the YOLO V8 model for object detection, and Google ML Kit to read the silo number with the smartphone camera. The end result was an easy-to-use app that was dummy-proof but robust. The application checked whether the correct silo was connected to the trailer and released the correct compartment in the trailer for unloading via short-range communication (TCP/IP) between the app and the trailer cabinet.\n\nWireframes were also provided for a modernized PLC control panel, which worked with the Android application.\n\nApp walkthrough:\n\nThe driver arrives on site and connects the trailer with the silo. Next, he/she starts the app on site and points the smartphone camera to the silo. The app reads the silo number and checks via object detection whether the trailer was connected correctly. If both conditions are met, the app will release the trailer cabinet, and the driver can start the unloading process. A manual entry of the silo number is available should the automatic procedure fail. After completing the unloading process, the driver can disable the wireless connection between the smartphone and the trailer cabinet, after which the app would return to the home screen to repeat the process at the next customer or silo.', 
      icon: "assets/images/project_silo_connect_2/app_icon.webp", 
      downloadLinks: [], 
      id: 1, 
      company: "Howest",
      screenshots: [
        "assets/images/project_silo_connect_2/screenshot_1.webp",
        "assets/images/project_silo_connect_2/screenshot_2.webp",
        "assets/images/project_silo_connect_2/screenshot_3.webp",
        "assets/images/project_silo_connect_2/screenshot_4.webp",
        "assets/images/project_silo_connect_2/screenshot_5.webp",
        "assets/images/project_silo_connect_2/screenshot_6.webp",
      ],
      route: "/project_silo_connect_2",)
  ];
}
