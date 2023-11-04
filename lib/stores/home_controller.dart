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
  List posts = [
    {
      "profile_img": NetworkImages.woman,
      "post_img": NetworkImages.dog,
      "name": "Ruffles",
      "likes_count": 33,
      "username": "Username",
      "description":
          "Bir narsalar kjsjfakj akjfkjafjaskjf jkfjajsdfjdsakj jkjfkjdas",
          "coments_count":12
    },
    {
      "profile_img": NetworkImages.dog3,
      "post_img": NetworkImages.dog2,
      "name": "Ruffles name",
      "likes_count": 45,
      "username": "Username",
      "description":
          "Bir narsalar kjsjfakj akjfkjafjaskjf jkfjajsdfjdsakj jkjfkjdas",
          "coments_count":3
    },
    {
      "profile_img": NetworkImages.man,
      "post_img": NetworkImages.nature,
      "name": "Name Ruffles",
      "likes_count": 12,
      "username": "Username",
      "description":
          "Bir narsalar kjsjfakj akjfkjafjaskjf jkfjajsdfjdsakj jkjfkjdas",
          "coments_count":78
    }
  ];
}
