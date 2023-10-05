import 'package:devhub/features/apis/views/apis_screen.dart';
import 'package:devhub/features/apis/views/categories.dart';
import 'package:devhub/features/packages/views/packages_screen.dart';
import 'package:flutter/material.dart';

class Constants {
  static const logoPath = 'assets/images/logo.png';
  static const googlePath = 'assets/images/google.png';

  static const tabWidgets = [
    ApisScreen(),
    PackageScreen(),
  ];

  static const IconData up =
      IconData(0xe800, fontFamily: 'MyFlutterApp', fontPackage: null);
  static const IconData down =
      IconData(0xe801, fontFamily: 'MyFlutterApp', fontPackage: null);

  static const awardsPath = 'assets/images/awards';

  static const categories = {
    'Animals': 'assets/images/Animals.png',
    'Anime': 'assets/images/Anime.png',
    'Anti-Malware': 'assets/images/Anti-Malware.png',
    'Art & Design': 'assets/images/Art & Design.png',
    'Authentication & Authorization':
        'assets/images/Authentication & Authorization.png',
    'Blockchain': 'assets/images/Blockchain.png',
    'Books': 'assets/images/Books.png',
    'Business': 'assets/images/Business.png',
    'Calendar': 'assets/images/Calendar.png',
    'Cloud Storage & File Sharing':
        'assets/images/Cloud Storage & File Sharing.png',
    'Continuous Integration': 'assets/images/Continuous Integration.png',
    'Cryptocurrency': 'assets/images/Cryptocurrency.png',
    'Currency Exchange': 'assets/images/Currency Exchange.png',
    'Data Validation': 'assets/images/Data Validation.png',
    'Development': 'assets/images/Development.png',
    'Dictionaries': 'assets/images/Dictionaries.png',
    'Documents & Productivity': 'assets/images/Documents & Productivity.png',
    'Email': 'assets/images/Email.png',
    'Entertainment': 'assets/images/Entertainment.png',
    'Environment': 'assets/images/Environment.png',
    'Events': 'assets/images/Events.png',
    'Finance': 'assets/images/Finance.png',
    'Food & Drink': 'assets/images/Food & Drink.png',
    'Games & Comics': 'assets/images/Games & Comics.png',
    'Geocoding': 'assets/images/Geocoding.png',
    'Government': 'assets/images/Government.png',
    'Health': 'assets/images/Health.png',
    'Jobs': 'assets/images/Jobs.png',
    'Machine Learning': 'assets/images/Machine Learning.png',
    'Music': 'assets/images/Music.png',
    'News': 'assets/images/News.png',
    'Open Data': 'assets/images/Open Data.png',
    'Open Source Projects': 'assets/images/Open Source Projects.png',
    'Patent': 'assets/images/Patent.png',
    'Personality': 'assets/images/Personality.png',
    'Phone': 'assets/images/Phone.png',
    'Photography': 'assets/images/Photography.png',
    'Programming': 'assets/images/Programming.png',
    'Science & Math': 'assets/images/Science & Math.png',
    'Security': 'assets/images/Security.png',
    'Shopping': 'assets/images/Shopping.png',
    'Social': 'assets/images/Social.png',
    'Sports & Fitness': 'assets/images/Sports & Fitness.png',
    'Test Data': 'assets/images/Test Data.png',
    'Text Analysis': 'assets/images/Text Analysis.png',
    'Tracking': 'assets/images/Tracking.png',
    'Transportation': 'assets/images/Transportation.png',
    'URL Shorteners': 'assets/images/URL Shorteners.png',
    'Vehicle': 'assets/images/Vehicle.png',
    'Video': 'assets/images/Video.png',
    'Weather': 'assets/images/Weather.png'
  };
}
