// // ignore: avoid_web_libraries_in_flutter
// import 'dart:js' as js;

// import 'package:flutter/material.dart';
// import 'package:portfolio/global_variables.dart';
// import 'package:portfolio/models/project.dart';

// class ProjectDetail extends StatelessWidget {
//   final Project project;
//   final double width;
//   final double height;
//   const ProjectDetail(
//       {required this.project,
//       required this.width,
//       required this.height,
//       super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 50),
//         child: Column(
//           children: [
//             width > 700 
//               ? Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   CircleAvatar(
//                     foregroundImage: AssetImage(project.icon),
//                     backgroundColor: accentColor1,
//                     radius: 40,
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   Text(
//                     project.title,
//                     style: TextStyle(
//                         color: primaryColor,
//                         fontSize: getSubtitleFontSize(width),
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: getSubtitleFontSize(width) * 0.15),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ) 
//               : Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   project.title,
//                   style: TextStyle(
//                       color: primaryColor,
//                       fontSize: getSubtitleFontSize(width),
//                       fontWeight: FontWeight.bold,
//                       letterSpacing: getSubtitleFontSize(width) * 0.15),
//                   textAlign: TextAlign.center,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 CircleAvatar(
//                   foregroundImage: AssetImage(project.icon),
//                   backgroundColor: accentColor1,
//                   radius: 40,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: getDividerHeight(width),
//             ),
//             Text(
//               project.description,
//               style: const TextStyle(
//                   color: primaryColor, fontSize: 16, letterSpacing: 1.5),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 16.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   js.context.callMethod('open', [project.downloadLink]);
//                 },
//                 style: ButtonStyle(
//                   backgroundColor: WidgetStateProperty.resolveWith((_) {
//                     return accentColor1;
//                   }),
//                 ),
//                 child: const Text(
//                   "Download app",
//                   style: TextStyle(color: onPrimaryActive),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
