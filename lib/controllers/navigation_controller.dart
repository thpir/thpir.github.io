import 'package:flutter/material.dart';
import 'package:portfolio/models/screen.dart';

class NavigationController extends ChangeNotifier {
  ScrollController scrollController = ScrollController();
  var homeKey = GlobalKey();
  var aboutKey = GlobalKey();
  var educationKey = GlobalKey();
  var projectsKey = GlobalKey();
  var listViewKey = GlobalKey();
  var bottomNavigationKey = GlobalKey();
  List<GlobalKey> keys = [];
  int screen = 0;
  int activeProject = 0;

  final List<Screen> screens = [
    Screen(
      name: "Home",
      icon: Icons.home,
    ),
    Screen(
      name: "About",
      icon: Icons.person,
    ),
    Screen(
      name: "Education",
      icon: Icons.school,
    ),
    Screen(
      name: "Projects",
      icon: Icons.workspace_premium,
    ),
  ];

  NavigationController() {
    keys = [homeKey, aboutKey, educationKey, projectsKey, bottomNavigationKey];
    scrollController.addListener(
      () {
        int visibleChild = getCenterItemIndex();
        if (visibleChild < 4) {
          screen = visibleChild;
          notifyListeners();
        } else {
          screen = 3;
          notifyListeners();
        }
      },
    );
  }

  // Method do determine which widget in the listview of our portfolio is 
  // currently visible. Tutorial found on: 
  // https://medium.com/@tkarmakar27112000/renderbox-in-flutter-locating-center-widget-in-a-listview-builder-d00499059f19
  int getCenterItemIndex() {
    final listViewBox =
        listViewKey.currentContext!.findRenderObject() as RenderBox;
    final listViewTop = listViewBox.localToGlobal(Offset.zero).dy;
    final listViewBottom = listViewTop + listViewBox.size.height;
    final listViewCenter = (listViewTop + listViewBottom) / 2;

    for (var i = 0; i < keys.length; i++) {
      var itemTop = 0.0;
      var itemBottom = 0.0;
      try {
        final itemBox =
            keys[i].currentContext!.findRenderObject() as RenderBox?;
        itemTop = itemBox!.localToGlobal(Offset.zero).dy;
        itemBottom = itemTop + itemBox.size.height;
      } catch (e) {
        // handle exception if item is not visible
      }

      if (itemTop > listViewBottom) {
        break;
      }

      if (itemTop <= listViewCenter && itemBottom >= listViewCenter) {
        return i;
      }
    }

    return -1;
  }

  disposeController() {
    scrollController.dispose();
  }

  void navigationTapped(int screen) {
    this.screen = screen;
    notifyListeners();
    if (screen == 3) {
      Scrollable.ensureVisible(projectsKey.currentContext!,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    } else if (screen == 2) {
      Scrollable.ensureVisible(educationKey.currentContext!,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    } else if (screen == 1) {
      Scrollable.ensureVisible(aboutKey.currentContext!,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    } else {
      Scrollable.ensureVisible(homeKey.currentContext!,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  void onPageChanged(int screen) {
    this.screen = screen;
    notifyListeners();
  }
}
