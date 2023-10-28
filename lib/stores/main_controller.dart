import 'package:intagram_clone_ui/config/Imports.dart';
import 'package:intagram_clone_ui/pages/BookPage.dart';
import 'package:intagram_clone_ui/pages/HomePage.dart';
import 'package:intagram_clone_ui/pages/MediaPage.dart';
import 'package:intagram_clone_ui/pages/Profile.dart';
import 'package:intagram_clone_ui/pages/SearchPage.dart';

class MainController extends GetxController {
  int currentPage = 1;

  List menus = [
    {"id": 1, "icon": AppIcons.home},
    {"id": 2, "icon": AppIcons.search},
    {"id": 3, "icon": AppIcons.media},
    {"id": 4, "icon": AppIcons.storybook},
    {"id": 5, "icon": AppIcons.storybook},
  ];
  void chooseCurrent(int index) {
    currentPage = index;
    update();
  }
  Widget choosePage(int index) {
    switch (index) {
      case 1:
        return const HomePage();
      case 2:
        return const SearchPage();
      case 3:
        return const MediaPage();
      case 4:
        return const BookPage();
      case 5:
        return const ProfilePage();
    }
    return Container();
  }
}
