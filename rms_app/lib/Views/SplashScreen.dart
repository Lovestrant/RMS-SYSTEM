import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rms_app/Views/AppColors/AppColors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key, String title = "Splash Screen"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    void directToIndex() {
      Navigator.pushNamed(context, '/Index');
    }

    Timer(const Duration(seconds: 3), () {
      directToIndex();
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: AppColors.blueTheme,
      home: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          width: 50,
          height: 50,
          color: AppColors.blueTheme,
          child: const Center(
            child: Image(image: AssetImage("lib/Assets/RMSLOGO.png")),
          )),
    );
  }
}
