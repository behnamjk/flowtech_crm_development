import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../providers/login_state_provider.dart';
import '../screens/auth_screen.dart';
import '../screens/dashboard_screen.dart';


class AppRouter with ChangeNotifier {
  final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const AuthScreen(title: 'Flowtech CRM Software',);
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'dashboard',
          builder: (BuildContext context, GoRouterState state) {
            return const DashScreen();
          },
        ),
      ],
    ),
  ],
);

  GoRouter get router => _router;
}