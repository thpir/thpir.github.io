import 'package:flutter/material.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/widgets/about_section/about_content.dart';
import 'package:provider/provider.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NavigationController>(context);
    return Container(
      key: controller.aboutKey,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height,
        minWidth: MediaQuery.of(context).size.width,
      ),
      color: onPrimaryActive,
      child: const AboutContent(),
    );
  }
}