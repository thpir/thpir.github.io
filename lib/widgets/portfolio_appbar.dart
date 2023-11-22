import 'package:flutter/material.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/global_variables.dart';
import 'package:provider/provider.dart';

class PortfolioAppbar extends StatelessWidget implements PreferredSizeWidget {
  const PortfolioAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NavigationController>(context);
    return AppBar(
      backgroundColor: primaryColor,
      title: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.contain,
        height: 36,
      ),
      centerTitle: false,
      actions: [
        IconButton(
            hoverColor: accentColor1,
            onPressed: () => controller.navigationTapped(0),
            icon: Icon(
              Icons.home,
              color:
                  controller.screen == 0 ? onPrimaryActive : onPrimaryInactive,
            )),
        IconButton(
            hoverColor: accentColor1,
            onPressed: () => controller.navigationTapped(1),
            icon: Icon(
              Icons.person,
              color:
                  controller.screen == 1 ? onPrimaryActive : onPrimaryInactive,
            )),
        IconButton(
            hoverColor: accentColor1,
            onPressed: () => controller.navigationTapped(2),
            icon: Icon(
              Icons.school,
              color:
                  controller.screen == 2 ? onPrimaryActive : onPrimaryInactive,
            )),
        IconButton(
            hoverColor: accentColor1,
            onPressed: () => controller.navigationTapped(3),
            icon: Icon(
              Icons.workspace_premium,
              color:
                  controller.screen == 3 ? onPrimaryActive : onPrimaryInactive,
            )),
      ],
    );
  }

  // needed to implement PreferredSizewidget in PortfolioAppBar widget to use
  // as an appbar in a Scaffold Widget.
  @override
  Size get preferredSize => const Size.fromHeight(50);
}
