import 'package:flutter/material.dart';
import 'package:flutteruicomponets/routes/route/routes.dart';
import 'package:get/get.dart';

List datas = [
  "Dark Login",
  "Animated Background Login",
  "Light Login",
  "Simple Login"
];

class LoginRegisterListScreen extends StatelessWidget {
  const LoginRegisterListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: datas.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
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
              child: Text(datas[index]));
        },
      ),
    );
  }
}
