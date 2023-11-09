import 'package:intagram_clone_ui/config/Imports.dart';

class UserProfileController extends GetxController {
  List fovorites = [
    {"img": NetworkImages.dog, "name": "Text here test tets tets"},
    {"img": NetworkImages.dog2, "name": "Text her"},
    {"img": NetworkImages.man, "name": "Text her"},
    {"img": NetworkImages.woman, "name": "Text her"},
    {"img": NetworkImages.dog3, "name": "Text her"},
    {"img": NetworkImages.nature, "name": "Text her"},
    {"img": NetworkImages.man, "name": "Text her"},
  ];

  String select = 'menu';

  clickButton(String buttonName) {
    select = buttonName;
    update();
  }

  List tabImages = [
    {"img": NetworkImages.man, "icon": null},
    {"img": NetworkImages.woman, "icon": AppIcons.media},
    {"img": NetworkImages.dog, "icon": AppIcons.like},
    {"img": NetworkImages.dog2, "icon": AppIcons.message},
    {"img": NetworkImages.nature, "icon": null},
    {"img": NetworkImages.dog3, "icon": AppIcons.ball},
    {"img": NetworkImages.dog, "icon": null},
    {"img": NetworkImages.woman, "icon": AppIcons.message},
  ];
  Widget tabsWidget(controller) {
    if (select == 'menu') {
      return Menu(controller: controller);
    } else if (select == 'media') {
      return const Text("Media");
    } else {
      return const Text("User");
    }
  }
}
