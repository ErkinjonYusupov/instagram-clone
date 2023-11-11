import 'package:intagram_clone_ui/config/Imports.dart';

class Themes{
  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.white,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
      titleTextStyle: TextStyle(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.white)
    ),
  );
 static ThemeData light = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.black,
     brightness: Brightness.light,
     appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      titleTextStyle: TextStyle(color: Colors.black),
      iconTheme: IconThemeData(color: Colors.black)
    ),
  );
}