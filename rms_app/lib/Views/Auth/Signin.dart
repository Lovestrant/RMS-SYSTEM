import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AppColors/AppColors.dart';

class Signin extends StatefulWidget {
   final String owner;
    Signin({Key? key, String title="Signin", required this.owner}) : super(key: key);

  @override
  _SigninState createState() => _SigninState(owner);
}

class _SigninState extends State<Signin> {
  String owner;
  _SigninState(this.owner);

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

              SizedBox(height: 10,),
              Text("Fill Fields to Sign In", style: TextStyle(color:  AppColors.redTheme, fontSize: 20),),
              SizedBox(height: 5,),
              Center(
                child: Container(
                  width: calculatedWidth,

                  child: Column(
                    children: [
                      TextFormField(
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Phone/Email',
                        ),
                      ),

                      SizedBox(height: 5,),

                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Password',
                        ),
                      ),

                      SizedBox(height: 15,),

                      TextButton(
                          onPressed: () {


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
                          child: Text("SIGN IN")
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  width: ScreenWidth,

                  child: Image(image: AssetImage("lib/Assets/Signin.png"), width: ScreenWidth,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
