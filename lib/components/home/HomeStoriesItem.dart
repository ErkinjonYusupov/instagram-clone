
import 'package:intagram_clone_ui/config/Imports.dart';

class HomeStoriesItem extends StatelessWidget {
  String img, name;
  HomeStoriesItem({
    super.key,
    required this.img,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileImage(img: img, radius: 30,),
        Text(Helpers.cutLongText(name, 6))
      ],
    );
  }
}


