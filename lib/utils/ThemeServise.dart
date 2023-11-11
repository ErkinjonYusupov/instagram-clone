import 'package:intagram_clone_ui/config/Imports.dart';

class ThemeService {
  //xotirani chaqirib olish
  static final box = GetStorage();

  //xotiradagi kalit sozdagi ma'lumotni o'qib olishh
  // "dark": true / false. agar bo'lmasa false
  bool loadThemeFromBox() => box.read('dark') ?? false;  //

  //xotiraga ma'lumot yozish
  saveThemeToBox(bool isDarkMode) => box.write('dark', isDarkMode);

  //temamizdi mode holatini abiqlab berish uchun
  ThemeMode get theme => loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

   swichTheme() {
    Get.changeThemeMode(loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    saveThemeToBox(!loadThemeFromBox());
  }
}
