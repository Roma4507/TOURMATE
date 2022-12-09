import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tourmate/Pages/Login_page.dart';
import 'package:tourmate/Pages/SignUp.dart';
import 'package:tourmate/Pages/Start.dart';
import 'package:tourmate/utils/route.dart';
import 'package:tourmate/Pages/Homepage.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
      darkTheme:ThemeData(
        brightness: Brightness.dark
      ),

      routes: {
        MyRoutes.start: (context)=>Start(),
        MyRoutes.loginRoute: (context)=>Login(),
        MyRoutes.signUp:(context)=>RegistartionScreen(),
        MyRoutes.homeRoute:(context)=>HomePage()
      },
    );
  }
}
