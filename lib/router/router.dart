import 'package:flowtech_crm/screens/project_details_screen.dart';
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
          GoRoute(
          
          path: '/projectDetails/:projectId',
          builder: (BuildContext context, GoRouterState state) {
            return  ProjectDetailsPage(projectId: state.pathParameters['projectId']!);
          },
        ),
  ],
);


  GoRouter get router => _router;
}