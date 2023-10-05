import 'package:devhub/features/apis/views/api_details.dart';
import 'package:devhub/features/home/views/home_screen.dart';
import 'package:devhub/features/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'features/auth/views/login_screen.dart';

final loggedOutRouter = RouteMap(routes: {
  '/': (_) => const MaterialPage(
        child: LoginScreen(),
      ),
});
final loggedInRouter = RouteMap(
  routes: {
    '/': (_) => const MaterialPage(
          child: HomeScreen(),
        ),
    '/api': (_) => const MaterialPage(
          child: ApiDetails(),
        ),
    '/profile': (_) => const MaterialPage(
          child: ProfileScreen(),
        ),
    '/add-api': (_) => const MaterialPage(
          child: ProfileScreen(),
        ),
  },
);
