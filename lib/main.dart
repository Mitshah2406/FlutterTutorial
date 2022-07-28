// ignore_for_file: unnecessary_new
import 'package:flutter_application_1/pages/google.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/routes/route.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
    
      routes: {
        // ignore: prefer_const_constructors
        MyRoutes.google_sign_in : (context) => Google(),
        MyRoutes.home_page: (context) => HomePage(),
        MyRoutes.login_page: (context) => LoginPage()
      },
    );
  }
}
