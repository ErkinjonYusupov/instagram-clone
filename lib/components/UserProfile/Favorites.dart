import 'package:intagram_clone_ui/config/Imports.dart';

class UserProfileFovorite extends StatelessWidget {
  String img;
  String text;
   UserProfileFovorite({
    super.key,
    required this.img,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: HexColor.fromHex('#C4C4C4'))),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: CachedNetworkImageProvider(
                   img),
              ),
            ),
            const SizedBox(height: 4),
             Text(Helpers.cutLongText(text, 7))
          ],
        ),
        const SizedBox(width: 18)
      ],
    );
  }
}