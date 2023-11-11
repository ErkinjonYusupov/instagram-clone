import 'package:intagram_clone_ui/config/Imports.dart';

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
                        child: SvgPicture.asset(item['icon'], color: context.theme.primaryColor))
                    : InkWell(
                      onTap: () {
                        mainController.chooseCurrent(5);
                      },
                      child: ProfileImage(img: NetworkImages.dog,radius: 15,),
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


