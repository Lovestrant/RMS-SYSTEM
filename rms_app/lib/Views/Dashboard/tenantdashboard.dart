import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AppColors/AppColors.dart';

class tenantdashboard extends StatelessWidget {
  const tenantdashboard({Key? key, String title="Tenant Dashboard"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.navyBluishTheme,
          title: const Text("Hey Kemboi"),
          centerTitle: true,
          leading: new IconButton(onPressed: () {
            Navigator.pop(context);
          },
            icon: new Icon(Icons.person_outline_rounded),),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextButton(
                    onPressed: () {
                    Navigator.pushNamed(context, "/JoinRentalGroup");
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
                        MaterialStateProperty.all(Size(250, 70))
                    ),
                    child: Text("Join a Rental Group")
                ),
                SizedBox(height: 20,),

                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/YourRentalGroups");
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            AppColors.pinkishTheme),
                        foregroundColor:
                        MaterialStateProperty.resolveWith(
                                (states) => Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        fixedSize:
                        MaterialStateProperty.all(Size(250, 70))
                    ),
                    child: Text("Your Rental Groups")
                ),
                SizedBox(height: 20,),

                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/PaymentHistory");
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            AppColors.brownishTheme),
                        foregroundColor:
                        MaterialStateProperty.resolveWith(
                                (states) => Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        fixedSize:
                        MaterialStateProperty.all(Size(250, 70))
                    ),
                    child: Text("Payment History")
                ),
                SizedBox(height: 20,),

                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/PayRent");
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
                        MaterialStateProperty.all(Size(250, 70))
                    ),
                    child: Text("Pay Rent")
                ),
              ],
            )

          ),
        ),
      ),
    );
  }
}
