import 'package:flutter/material.dart';
import 'package:portfolio/controllers/navigation_controller.dart';
import 'package:portfolio/global_variables.dart';
import 'package:provider/provider.dart';

class PortfolioAppbar extends StatelessWidget implements PreferredSizeWidget {
  const PortfolioAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NavigationController>(context);
    final width = MediaQuery.of(context).size.width;

    List<Widget> smallAppBar() {
      List<Widget> appBarActions = [];
      for (int i = 0; i < 4; i++) {
        appBarActions.add(
          IconButton(
              hoverColor: accentColor1,
              onPressed: () => controller.navigationTapped(i),
              icon: Icon(
                controller.screens[i].icon,
                color: controller.screen == i
                    ? onPrimaryActive
                    : onPrimaryInactive,
              )),
        );
      }
      return appBarActions;
    }

    List<Widget> largeAppBar() {
      List<Widget> appBarActions = [];
      for (int i = 0; i < 4; i++) {
        appBarActions.add(
          Container(
            width: 130,
            padding: const EdgeInsets.symmetric(vertical: 2),
            decoration: BoxDecoration(
              border: Border.symmetric(horizontal: controller.screen == i
                    ? const BorderSide(color: accentColor2)
                    : BorderSide.none)
            ),
            child: TextButton.icon(
                onPressed: () => controller.navigationTapped(i),
                icon: Icon(
                  controller.screens[i].icon,
                  color: onPrimaryActive,
                ), 
                label: Text(
                  controller.screens[i].name,
                  style: const TextStyle(
                    color: onPrimaryActive
                  ),
                ),
            ),
          ),
        );
      }
      return appBarActions;
    }

    return AppBar(
      backgroundColor: primaryColor,
      title: GestureDetector(
        onTap: () => controller.navigationTapped(0),
        child: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
          height: 36,
        ),
      ),
      centerTitle: false,
      actions: width > 800 ? largeAppBar() : smallAppBar()
    );
  }

  // needed to implement PreferredSizewidget in PortfolioAppBar widget to use
  // as an appbar in a Scaffold Widget.
  @override
  Size get preferredSize => const Size.fromHeight(50);
}
