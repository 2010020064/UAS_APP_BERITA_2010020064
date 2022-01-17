// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:app_berita_salma/home_view.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 7);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return HomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "img/6.JPG",
              width: 375.0,
              height: 275.0,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          Text(
            "| Salma (2010020064) // 5A Sistem Informasi (Reguler BJM) // Marabahan, 18 April 1999 // Jl. Meratus Gg.2 No.49 |",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
          Text(
            " ",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          CircularProgressIndicator()
        ],
      ),
    );
  }
}
