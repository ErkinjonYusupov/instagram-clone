import 'package:intagram_clone_ui/config/Imports.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile>
    with SingleTickerProviderStateMixin {
  List imagas = [NetworkImages.dog, NetworkImages.man, NetworkImages.woman];
  UserProfileController controller = Get.put(UserProfileController());
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserProfileController>(
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new)),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("username"),
                  const SizedBox(width: 4),
                  SvgPicture.asset(AppIcons.official)
                ],
              ),
              actions: [
                IconButton(
                    onPressed: () {}, icon: SvgPicture.asset(AppIcons.ball)),
                IconButton(
                    onPressed: () {}, icon: SvgPicture.asset(AppIcons.more)),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const UserProfileHeader(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const UserProfileInfo(),
                        const SizedBox(height: 12),
                        UserProfileFollowers(imagas: imagas),
                        const SizedBox(height: 12),
                        const UserProfileActions(),
                        const SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: List.generate(
                                  controller.fovorites.length, (index) {
                            var item = controller.fovorites[index];
                            return UserProfileFovorite(
                                img: item['img'], text: item['name']);
                          })),
                        ),
                        TabBar(
                          controller: tabController,
                          isScrollable: true,
                          tabs: const [
                            Tab(
                              text: 'EMAIL ADDRESS',
                            ),
                            Tab(
                              text: 'PHONE NUMBER',
                            ),
                            Tab(
                              text: 'PHONE NUMBER',
                            ),
                          ],
                          labelColor: Colors.black,
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          height: 300,
                          child:
                              TabBarView(controller: tabController, children: [
                            Text("data1"),
                            Text("data2"),
                            Text("data3"),
                          ]),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
