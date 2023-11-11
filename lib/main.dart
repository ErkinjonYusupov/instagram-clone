
import 'package:intagram_clone_ui/config/Imports.dart';


void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      darkTheme: Themes.dark,
      theme: Themes.light,
      themeMode: ThemeService().theme,
      home: const SafeArea(child: MainPage()),
    );
  }
}


