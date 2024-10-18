import 'package:flowtech_crm/classes/auth_class.dart';
import 'package:flowtech_crm/classes/project_class.dart';
import 'package:flowtech_crm/providers/auth_provider.dart';
import 'package:flowtech_crm/providers/projects_provider.dart';
import 'package:flutter/material.dart';
import 'screens/auth_screen.dart';
import 'package:appwrite/appwrite.dart';
import 'package:go_router/go_router.dart';
import 'screens/dashboard_screen.dart';
import 'package:provider/provider.dart';
import './router/router.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
  

}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [

        ChangeNotifierProvider(create: (_) => AuthProvider(AuthData(),),),
        ChangeNotifierProvider(create: (_) => AppRouter(),),
        ChangeNotifierProvider(create: (_) => ProjectsProvider(Project())),
      ] ,
    
      child: Builder(builder: (BuildContext context){

      final router = Provider.of<AppRouter>(context);

        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
      
      title: 'Flowtech Co',
      theme: ThemeData.dark(

        
        useMaterial3: true,


      ),
      routerConfig:  router.router,
    );
      },),);
  }
}

