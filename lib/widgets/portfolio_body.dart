import 'package:flutter/material.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/global_variables.dart';
import 'package:portfolio/models/screen.dart';
import 'package:portfolio/widgets/bottom_navigation_extension.dart';
import 'package:provider/provider.dart';

class PortfolioBody extends StatelessWidget {
  const PortfolioBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NavigationController>(context);

    List<Widget> screens() {
      List<Widget> screenList = [];
      for(Screen screen in controller.screens) {
        screenList.add(screen.screen);
      }
      return screenList;
    }

    return Container(
        height: double.infinity,
        width: double.infinity,
        color: backgroundColor,
        child: Stack(
          children: [
            ParallaxRain(
              dropColors: const [
                Color.fromRGBO(25, 125, 230, .2)
              ],
              dropWidth: .5,
              dropFallSpeed: .4,
              trail: true,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color.fromRGBO(27, 28, 56, .8),
            ),
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.onPageChanged,
              children: screens(),
            ),
            const BottomNavigationExtension()
          ],
        ),
      );
  }
}