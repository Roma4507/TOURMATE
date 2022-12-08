import 'package:flutter/material.dart';
import 'package:tourmate/Pages/Home_Screen.dart';
import 'package:tourmate/Pages/Login_page.dart';
import 'package:tourmate/utils/route.dart';


void main(){
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
        MyRoutes.homeRoute: (context)=>HomePage(),
        MyRoutes.loginRoute: (context)=>LoginPage()
      },
    );
  }
}
