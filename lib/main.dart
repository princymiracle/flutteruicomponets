import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutteruicomponets/routes/route/routes.dart';
import 'package:flutteruicomponets/routes/route/screen.dart';
import 'package:get/get.dart';

import 'components/loginRegister/lightloginpage.dart';
import 'components/loginRegister/simpleloginpage.dart';
import 'components/register/registerScrren/animatedregisterpage.dart';
import 'components/register/registerScrren/darkregisterpage.dart';
import 'components/register/registerScrren/lightregisterpage.dart';
import 'components/register/registerScrren/simpleregisterpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (context, orientation, screenType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Sizer Example',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
         // home: Simpleregisterpage(),
          initialRoute: Routes.loginpage,
          getPages: Screens.routes,
        );
      },
    );
  }
}
