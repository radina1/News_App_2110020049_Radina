import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200.0,
                width: 200.0,
                child: Image.asset(
                  'assets/icons/icons_cover.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}