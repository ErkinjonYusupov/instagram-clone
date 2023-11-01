import 'package:intagram_clone_ui/config/Imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [NetworkImages.dog, NetworkImages.dog2, NetworkImages.dog3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 50,
                child: Stack(
                  children: List.generate(images.length, (index) {
                    return Positioned(
                        left: index * 25,
                        child: CircleNetworkImage(image: images[index]));
                  }),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
