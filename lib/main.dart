import 'package:flutter/material.dart';
import './auth_screen.dart';
import 'package:appwrite/appwrite.dart';
import 'package:go_router/go_router.dart';
import './dashboard_screen.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Client client = Client();
  client
    .setEndpoint('https://cloud.appwrite.io/v1')
    .setProject('66d197ce0026df2f34da')
    .setSelfSigned(status: true); // For self signed certificates, only use for development
  runApp(const MyApp());
  

}


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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flowtech Co',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }
}

