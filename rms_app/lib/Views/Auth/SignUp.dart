import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rms_app/Backend/SignupBackened.dart';

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

  final _formKey = GlobalKey<FormState>();

  //controllers
  final emailController = TextEditingController();
  final phonenumberController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    emailController.dispose();
    phonenumberController.dispose();
    passwordController.dispose();
    repeatPasswordController.dispose();
    super.dispose();
  }


  //Method validate and submit Details to backend

  void submitDetails() {
    SignupBackend.submitSignUpDetails(emailController.text,phonenumberController.text,passwordController.text, Owner);
  }

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
              child: Form(
                key: _formKey,
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
                            controller: emailController,
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                              hintText: 'Enter Email',
                            ),

                            //validator Logic
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Input Email';
                              }else if(checkEmail(value) != "true") {
                                return 'Invalid Email';
                              }
                              return null;
                            },
                          ),

                          SizedBox(height: 5,),
                          TextFormField(
                            controller: phonenumberController,
                            keyboardType: TextInputType.number,
                            obscureText: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Phonenumber',
                              hintText: 'Enter Phone',
                            ),

                            //validator Logic
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Input Phonenumber';
                              }else if(validateNumbers(value) != "true"){
                                return 'Phonenumber can not have letters';
                              }
                              return null;
                            },
                          ),

                          SizedBox(height: 5,),
                          TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              hintText: 'Create password',
                            ),

                            //validator Logic
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Input Password';
                              }
                              return null;
                            },
                          ),

                          SizedBox(height: 5,),
                          TextFormField(
                            controller: repeatPasswordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Confirm Password',
                              hintText: 'Repeat Password',
                            ),

                            //validator Logic
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Confirm Password';
                              }else if(passwordController.text != repeatPasswordController.text) {
                                return 'Passwords must match';
                              }
                              return null;
                            },
                          ),

                          SizedBox(height: 15,),

                          TextButton(
                              onPressed: () {
                              if (_formKey.currentState!.validate()) {
                              // If the form is valid
                                submitDetails();
                              }
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

                          SizedBox(height: 10,),

                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/Signin");
                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      AppColors.homeTheme),
                                  foregroundColor:
                                  MaterialStateProperty.resolveWith(
                                          (states) => AppColors.redTheme),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  fixedSize:
                                  MaterialStateProperty.all(Size(250, 40))
                              ),
                              child: Text("Sign In")
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )
        )
    );
  }

   checkEmail(String value) {
    int i;
    for(i=0; i<value.length; i++){
     if(value[i] == "@"){
       return "true";
     }
     if(value[i] == "@"){
       break;
     }
    }
  }

  validateNumbers(String value) {
    if(value.contains(RegExp(r'[a-z]')) || value.contains(RegExp(r'[A-Z]'))) {
      return "false";
    }else{
      return "true";
    }

  }

}

