import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/global_variables.dart';

class EducationTile extends StatelessWidget {
  final double screenWidth;
  final String imagePath;
  final String title;
  final String content;
  const EducationTile({
    required this.screenWidth, 
    required this.imagePath, 
    required this.title, 
    required this.content, 
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                imagePath, 
                width: 24,
                height: 24,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                title,
                style: TextStyle(
                  color: onPrimaryActive,
                  fontSize: getSubtitleFontSize(screenWidth),
                  fontWeight: FontWeight.bold,
                  letterSpacing: getSubtitleFontSize(screenWidth) * 0.15
                ),
              ),
            ],
          ),
          Text(
            content,
            style: const TextStyle(
              color: onPrimaryActive, 
              fontSize: 16, 
              letterSpacing: 1.5
            ),
          )
        ],
      ),
    );
  }
}