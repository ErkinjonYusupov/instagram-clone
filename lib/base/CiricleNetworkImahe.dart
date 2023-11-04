import 'package:intagram_clone_ui/config/Imports.dart';

class CircleNetworkImage extends StatelessWidget {
  String image;
  Color borderColor;
  double radius;
   CircleNetworkImage({
    super.key,
    required this.image,
    this.borderColor=Colors.white,
    this.radius=40.0,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        imageUrl: image,
        imageBuilder: (context, imageProvider) => Container(
          width: radius,
          height: radius,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 3),
            shape: BoxShape.circle,
            image: DecorationImage(
                image: imageProvider, fit: BoxFit.cover),
          ),
        ),
        placeholder: (context, url) =>
            const CircularProgressIndicator(),
        errorWidget: (context, url, error) =>
            const Icon(Icons.error),
      );
  }
}