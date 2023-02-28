import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main_app/myroutes.dart';
import 'package:main_app/pages/homepage.dart';
import 'package:main_app/pages/loginpage.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily),
      themeMode: ThemeMode.light,
      routes:{
        MyRoutes.loginPage : (context) => LoginPage(),
        MyRoutes.homePage : (context) => HomePage()
      },
    );
  }

}