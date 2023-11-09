import 'package:intagram_clone_ui/config/Imports.dart';

class Tabs extends StatelessWidget {
  UserProfileController controller;
   Tabs({
    super.key,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TabBuuton(
            icon: AppIcons.menu,
            selected: controller.select == 'menu',
            onTap: () {
              controller.clickButton('menu');
            }),
        TabBuuton(
            icon: AppIcons.media2,
            selected: controller.select == 'media',
            onTap: () {
              controller.clickButton('media');
            }),
        TabBuuton(
            icon: AppIcons.user,
            selected: controller.select == 'user',
            onTap: () {
              controller.clickButton('user');
            }),
      ],
    );
  }
}