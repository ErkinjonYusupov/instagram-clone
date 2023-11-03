import 'package:intagram_clone_ui/config/Imports.dart';

class HomeController extends GetxController {
  List stories = [
    {"img": NetworkImages.woman, "name": "sabanok"},
    {"img": NetworkImages.dog2, "name": "blue_bou"},
    {"img": NetworkImages.dog3, "name": "test_user"},
    {"img": NetworkImages.man, "name": "wagless"},
    {"img": NetworkImages.nature, "name": "stave"},
    {"img": NetworkImages.woman, "name": "test"},
    {"img": NetworkImages.dog, "name": "sabanok"},
  ];
  List post = [
    {
      "profile_img": NetworkImages.woman,
      "post_img": NetworkImages.dog,
      "name": "Ruffles",
      "likes_count": 100,
      "username": "Username",
      "description":
          "Bir narsalar kjsjfakj akjfkjafjaskjf jkfjajsdfjdsakj jkjfkjdas",
          "coments_count":16
    }
  ];
}
