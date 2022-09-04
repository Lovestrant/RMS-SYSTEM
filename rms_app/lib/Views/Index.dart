import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rms_app/Views/AppColors/AppColors.dart';
import 'package:rms_app/Views/Auth/Owner.dart';

class Index extends StatelessWidget {
  const Index({key, String title="index"}) : super(key: key);

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
                      const Text("Choose Account:", style: TextStyle(color: AppColors.pinkishTheme, fontSize: 20),),
                      SizedBox(height: 20,),

                      TextButton(
                          onPressed: () {

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Owner(owner : "owner"),
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
                          child: Text("OWNER")
                      ),

                      SizedBox(height: 20,),

                      TextButton(
                          onPressed: () {

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Owner( owner :  "tenant"),
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
                          child: Text("TENANT")
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
