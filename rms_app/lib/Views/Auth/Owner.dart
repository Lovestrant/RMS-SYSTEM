import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

import '../AppColors/AppColors.dart';
import 'SignUp.dart';
import 'Signin.dart';

class Owner extends StatelessWidget {
  final String owner;
   const Owner({Key? key, String title = "Choose Owner", required this.owner}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              color: AppColors.homeTheme,
              child: Column(
                children: [
                  Container(
                    width: ScreenWidth,

                    child: Image(image: AssetImage("lib/Assets/index.png"), width: ScreenWidth,),
                  ),

                  SizedBox(height: 20,),
                  Center(
                    child: Container(
                        width: ScreenWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("Select $owner option", style: TextStyle(color: AppColors.pinkishTheme, fontSize: 20),),
                            SizedBox(height: 20,),

                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Signin( owner :  owner),
                                  ));

                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColors.bluishTheme),
                                    foregroundColor:
                                    MaterialStateProperty.resolveWith(
                                            (states) => Colors.white),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                    ),
                                    fixedSize:
                                    MaterialStateProperty.all(Size(250, 40))
                                ),
                                child: Text("Sign In")
                            ),

                            SizedBox(height: 20,),

                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignUp(Owner :  owner),
                                  ));

                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColors.greenishTheme),
                                    foregroundColor:
                                    MaterialStateProperty.resolveWith(
                                            (states) => Colors.white),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                    ),
                                    fixedSize:
                                    MaterialStateProperty.all(Size(250, 40))
                                ),
                                child: Text("Create Account?")
                            )
                          ],
                        )
                    ),
                  )

                ],
              )
          ),
        )
    );
  }
}
