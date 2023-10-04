import 'package:devhub/features/home/views/home_screen.dart';
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
  },
);
