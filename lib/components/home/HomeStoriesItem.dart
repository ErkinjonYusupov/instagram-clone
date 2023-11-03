
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
        Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(500),
              gradient: LinearGradient(colors: [
                sariq,
                pushti,
                qizil,
              ])),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(500)),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: CachedNetworkImageProvider(img),
              ),
            ),
          ),
        ),
        Text(Helpers.cutLongText(name, 6))
      ],
    );
  }
}
