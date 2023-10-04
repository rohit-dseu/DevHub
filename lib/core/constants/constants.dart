import 'package:devhub/features/apis/views/apis_screen.dart';
import 'package:devhub/features/packages/views/packages_screen.dart';
import 'package:flutter/material.dart';

class Constants {
  static const logoPath = 'assets/images/logo.png';
  static const googlePath = 'assets/images/google.png';

  static const tabWidgets = [
    ApisScreen(),
    PackageScreen(),
  ];
  static const List categories = [
    "Tech",
    "Data Science",
    "Web Development",
    "Machine Learning",
    "Science",
    "Math",
    "Arts",
    "Productivity",
    "Carrier",
    "Food",
    "Travel",
    "Health" "Movie",
    "Political",
    "Business",
    "Sports",
    "News",
    "Personal",
  ];

  static const IconData up =
      IconData(0xe800, fontFamily: 'MyFlutterApp', fontPackage: null);
  static const IconData down =
      IconData(0xe801, fontFamily: 'MyFlutterApp', fontPackage: null);

  static const awardsPath = 'assets/images/awards';
}
