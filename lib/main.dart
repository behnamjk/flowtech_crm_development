import 'package:flutter/material.dart';
import './auth_screen.dart';
import 'package:appwrite/appwrite.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Client client = Client();
  client
    .setEndpoint('https://cloud.appwrite.io/v1')
    .setProject('66d197ce0026df2f34da')
    .setSelfSigned(status: true); // For self signed certificates, only use for development
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flowtech Co',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthScreen(title: 'Flowtech CRM Software'),
    );
  }
}

