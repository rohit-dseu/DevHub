import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/utils.dart';

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, ThemeData>((ref) {
  return ThemeNotifier();
});

class AppColors {
  /// **************    Gradients   *******************
  static LinearGradient roundedButtonGradient = LinearGradient(
    begin: FractionalOffset.bottomLeft,
    end: FractionalOffset.topRight,
    colors: <Color>[
      Color(
        getColorHexFromStr("#FE685F"),
      ),
      Color(
        getColorHexFromStr("#FB578B"),
      ),
    ],
  );
  static LinearGradient orangeGradient = LinearGradient(
    begin: FractionalOffset.topLeft,
    end: FractionalOffset.topRight,
    colors: <Color>[
      Color(
        getColorHexFromStr("#fe8c00"),
      ),
      Color(
        getColorHexFromStr("#f83600"),
      ),
    ],
  );
  static LinearGradient blueGradient = const LinearGradient(
    begin: FractionalOffset.bottomLeft,
    end: FractionalOffset.topRight,
    colors: [
      Color.fromARGB(255, 68, 153, 237),
      Color(0xFF418FDE),
      Color.fromARGB(255, 47, 67, 141),
    ],
    // stops: [0.0, 1.0],
  );

  static const LinearGradient roundedButtonDisabledGradient = LinearGradient(
    begin: FractionalOffset.bottomLeft,
    end: FractionalOffset.topRight,
    colors: <Color>[
      Color.fromARGB(255, 214, 202, 202),
      Color.fromARGB(255, 158, 145, 145),
    ],
  );

  /// **************   Box Shadows   *******************

  static const List<BoxShadow> carouselSliderShadow = [
    BoxShadow(
      color: lightShadowColor,
      blurRadius: 32.0,
      spreadRadius: 0.5,
      offset: Offset(1.0, 2.0), // shadow direction: bottom right
    ),
  ];

  /// **************   General Colors   *******************

  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color.fromARGB(201, 151, 151, 151);
  static const Color black = Color.fromARGB(255, 48, 48, 48);
  static const Color orange = Colors.orangeAccent;
  static Color lightWhite = Colors.white.withOpacity(
    0.7,
  );
  static Color lightBlack = const Color.fromARGB(122, 0, 0, 0);
  static const Color green = Color.fromARGB(255, 78, 193, 82);
  static const Color yellow = Color.fromARGB(255, 213, 244, 15);
  static const Color red = Colors.red;
  static const Color blue = Colors.blue;
  static const Color pinkAccent = Colors.pinkAccent;

  /// **************   Specific Colors   *******************

  static const Color primary = Colors.pinkAccent;
  static const Color primaryDark = Color.fromARGB(255, 238, 72, 50);

  // Disabled Color
  static const Color mDisabledColor = Color.fromARGB(175, 162, 162, 162);

  static const Color scaffoldBackgroundColor =
      Color.fromARGB(255, 245, 250, 255);
  static const Color subTitleColor = Color.fromARGB(255, 110, 110, 110);
  static const Color lightShadowColor = Color.fromARGB(71, 123, 123, 123);

  // Themes
  static var darkModeAppTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: black,
    cardColor: grey,
    appBarTheme: const AppBarTheme(
      backgroundColor: black,
      iconTheme: IconThemeData(
        color: white,
      ),
      titleTextStyle: TextStyle(
        color: white,
      ),
    ),
    primaryColor: red,
  );

  static var lightModeAppTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: white,
    cardColor: grey,
    appBarTheme: const AppBarTheme(
      backgroundColor: white,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: black,
      ),
      iconTheme: IconThemeData(
        color: black,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: white,
    ),
    primaryColor: red,
    backgroundColor: white,
  );
}

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeMode _mode;
  ThemeNotifier({ThemeMode mode = ThemeMode.dark})
      : _mode = mode,
        super(
          AppColors.darkModeAppTheme,
        ) {
    getTheme();
  }

  ThemeMode get mode => _mode;

  void getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final theme = prefs.getString('theme');

    if (theme == 'light') {
      _mode = ThemeMode.light;
      state = AppColors.lightModeAppTheme;
    } else {
      _mode = ThemeMode.dark;
      state = AppColors.darkModeAppTheme;
    }
  }

  void toggleTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (_mode == ThemeMode.dark) {
      _mode = ThemeMode.light;
      state = AppColors.lightModeAppTheme;
      prefs.setString('theme', 'light');
    } else {
      _mode = ThemeMode.dark;
      state = AppColors.darkModeAppTheme;
      prefs.setString('theme', 'dark');
    }
  }
}
