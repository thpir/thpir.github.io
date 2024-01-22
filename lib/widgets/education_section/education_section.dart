import 'package:flutter/material.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/widgets/clippers/top_bottom_skew_cut.dart';
import 'package:portfolio/widgets/education_section/education_content.dart';
import 'package:provider/provider.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NavigationController>(context);
    return ClipPath(
      clipper: TopBottomSkewCut(clipheight: width / 10),
      child: Container(
        key: controller.educationKey,
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height + width / 5,
          minWidth: MediaQuery.of(context).size.width,
        ),
        color: backgroundColor,
        child: const EducationContent(),
      ),
    );
  }
}