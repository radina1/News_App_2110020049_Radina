import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_2110020049/pages/home_page.dart';
import 'package:news_app_2110020049/pages/otomotive_page.dart';
import 'package:news_app_2110020049/pages/profile_page.dart';
import 'package:news_app_2110020049/pages/splashscreen.dart';
import 'package:news_app_2110020049/pages/sport_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 2)),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.waiting) {
          return MaterialApp(
            routes: {
              '/home_page': (context) => HomePage(),
              '/otomotive_page': (context) => OtomotivePage(),
              '/sport_page': (context) => SportPage(),
              '/profile_page': (context) => ProfilePage(),
            },
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
        } else {
          return SplashScreen();
        }
      },
    );
  }
}
