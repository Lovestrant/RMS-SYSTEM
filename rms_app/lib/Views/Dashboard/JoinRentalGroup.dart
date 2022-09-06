import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AppColors/AppColors.dart';

class JoinRentalGroup extends StatefulWidget {
  const JoinRentalGroup({Key? key, String title = "Join Rental Group"}) : super(key: key);

  @override
  _JoinRentalGroupState createState() => _JoinRentalGroupState();
}

class _JoinRentalGroupState extends State<JoinRentalGroup> {
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
          appBar: AppBar(
            backgroundColor: AppColors.navyBluishTheme,
            title: const Text("RMS System"),
            centerTitle: true,
            leading: new IconButton(onPressed: () {
              Navigator.pop(context);
            },
              icon: new Icon(Icons.arrow_back),),
          ),
          body: Container(
            height: ScreenHeight,
            width: ScreenWidth,

             child: Container(
               width: calculatedWidth,
               child: Column(
                 children: [
                   SizedBox(height: 20,),
                   Text("Get a Rental Id from your Land owner", style: TextStyle(color: AppColors.redTheme, fontSize: 15),),
                   SizedBox(height: 20,),
                   Container(
                     width: calculatedWidth,
                     child: TextField(
                       decoration: InputDecoration(
                         border: OutlineInputBorder(),
                         labelText: "Enter Rental Id",
                         hintText: "Enter Rental Id"
                       ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   TextButton(onPressed: (){

                   },
                   style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all(
                           AppColors.navyBluishTheme),
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
                   child: Text("Join Rental"))
                 ],
               ),
             ),
          ),
        )
    );
  }
}


