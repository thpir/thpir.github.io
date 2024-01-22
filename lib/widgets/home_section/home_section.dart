import 'package:flutter/material.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/widgets/clippers/bottom_skew_cut.dart';
import 'package:portfolio/widgets/home_section/home_content.dart';
import 'package:provider/provider.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NavigationController>(context);
    return ClipPath(
      clipper: BottomSkewCut(clipheight: width / 10),
      child: Container(
        key: controller.homeKey,
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height + width / 10,
          minWidth: MediaQuery.of(context).size.width,
        ),
        color: backgroundColor,
        child: const HomeContent(),
      ),
    );
  }
}