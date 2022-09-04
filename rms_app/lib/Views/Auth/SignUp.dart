import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AppColors/AppColors.dart';

class SignUp extends StatefulWidget {
  final String Owner;
   SignUp({Key? key, String title="Sign Up", required this.Owner}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState(Owner);
}

class _SignUpState extends State<SignUp> {
  String Owner;
  _SignUpState(this.Owner);

  @override
  Widget build(BuildContext context) {

    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.height;

    double calculatedWidth = 0.0;
    if(ScreenWidth<351) {
      calculatedWidth = 300;
    }else if(ScreenWidth>600 && ScreenWidth<1024){
      calculatedWidth = 500;
    }else{
      calculatedWidth = 350;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
              height: ScreenHeight,
              width: ScreenWidth,
              color: AppColors.homeTheme,
              child: Column(
                children: [
                  Container(
                    width: ScreenWidth,

                    child: Image(image: AssetImage("lib/Assets/SignUp1.png"), width: ScreenWidth,),
                  ),
                  SizedBox(height: 5,),
                  Text("SIGN UP", style: TextStyle(color: AppColors.redTheme, fontSize: 30),),
                  SizedBox(height: 5,),

                  Container(
                   width: calculatedWidth,
                    child: Column(
                      children: [
                        TextFormField(
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Email',
                          ),
                        ),

                        SizedBox(height: 5,),
                        TextFormField(
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter Phone',
                          ),
                        ),

                        SizedBox(height: 5,),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Create password',
                          ),
                        ),

                        SizedBox(height: 5,),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Repeat Password',
                          ),
                        ),

                        SizedBox(height: 15,),

                        TextButton(
                            onPressed: () {


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
                            child: Text("Create Account")
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            )
        )
    );
  }
}
