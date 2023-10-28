import 'package:cached_network_image/cached_network_image.dart';
import 'package:intagram_clone_ui/config/Imports.dart';
import 'package:intagram_clone_ui/config/img_url.dart';
import 'package:intagram_clone_ui/stores/main_controller.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MainController mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (mainController) {
        return Scaffold(
          bottomNavigationBar: Container(
            padding:
                const EdgeInsets.only(bottom: 20, top: 12, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(mainController.menus.length, (index) {
                var item = mainController.menus[index];
                return item['id'] != 5
                    ? InkWell(
                        onTap: () {
                          mainController.chooseCurrent(item['id']);
                        },
                        child: SvgPicture.asset(item['icon']))
                    : InkWell(
                      onTap: () {
                        mainController.chooseCurrent(5);
                      },
                      child: CachedNetworkImage(
                          imageUrl: NetworkImages.dog,
                          imageBuilder: (context, imageProvider) => Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: imageProvider, fit: BoxFit.cover),
                            ),
                          ),
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                    );
              }),
            ),
          ),
          body: mainController.choosePage(mainController.currentPage),
        );
      },
    );
  }
}
