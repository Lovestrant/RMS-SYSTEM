import 'package:flutter/material.dart';
import 'package:rms_app/Views/Auth/Owner.dart';
import 'package:rms_app/Views/Auth/SignUp.dart';
import 'package:rms_app/Views/Auth/Signin.dart';
import 'Views/Index.dart';
import 'Views/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'RMS System',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(title: 'Flutter Demo Home Page'),
        //Routes throughout the application

        routes: <String, WidgetBuilder>{
           '/splashScreen': (BuildContext context) => const SplashScreen(title: 'Splash Screen'),
          '/Owner': (BuildContext context) => const Owner(title: 'Owner', owner: '',),
          '/Signin': (BuildContext context) => Signin(title: 'Signin', owner: '',),
          '/SignUp': (BuildContext context) => SignUp(title: 'SignUp', Owner: '',),
          '/Index': (BuildContext context) => const Index(title: 'Index'),
        });

  }
}
