import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'package:flutteruicomponets/components/loginRegister/loginlistscreen/loginregistermodel.dart';

import 'package:get/get.dart';

class LoginRegisterPage extends StatelessWidget {
  List<LoginRegisterModel> loginregister = [
    LoginRegisterModel(text: "Dark Login", screen: "/darkloginpage"),
    LoginRegisterModel(
        text: "Animated Background Login", screen: "/animatedpage"),
    LoginRegisterModel(text: "Light Login", screen: "/lightpage"),
    LoginRegisterModel(text: "Simple Login", screen: "/simplepage"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back, color: Colors.white),
          title: Text("Login ans Register Page",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xff77BAC7),
        ),
        backgroundColor: Color(0xffE5E4E2),
        body: ListView.builder(
          itemCount: loginregister.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.toNamed(loginregister[index].screen);
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  shadowColor: Color(0xff0909FF),
                  child: Container(
                    height: 7.h,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    width: 2.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff43C6DB)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text(
                        loginregister[index].text,
                        style: TextStyle(
                          color: Color(0xff4545FF),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
            /*return InkWell(
              onTap: () {
                switch (index) {
                  case 0:
                    Get.toNamed(Routes.darkloginpage);
                    break;

                  case 1:
                    Get.toNamed(Routes.animatedpage);
                    break;

                  case 2:
                    Get.toNamed(Routes.lightpage);
                    break;

                  case 3:
                    Get.toNamed(Routes.simplepage);
                    break;
                }
              },
              child: Text(datas[index]));*/
          },
        )
        );
  }
}
