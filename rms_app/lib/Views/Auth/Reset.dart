import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AppColors/AppColors.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key, String title="Reset"}) : super(key: key);

  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
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
              SizedBox(height: 20,),

              Center(
                child: Container(
                  width: calculatedWidth,

                  child: Column(
                    children: [
                      Text("Enter Email to receive OTP", style: TextStyle(color:  AppColors.redTheme, fontSize: 20),),
                      SizedBox(height: 10,),
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          hintText: 'Enter Email',
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
                          child: Text("GET OTP")
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
