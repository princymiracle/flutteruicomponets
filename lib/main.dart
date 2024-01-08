import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutteruicomponets/routes/route/routes.dart';
import 'package:flutteruicomponets/routes/route/screen.dart';
import 'package:get/get.dart';




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
          initialRoute: Routes.darkloginpage,
          getPages: Screens.routes,
        );
      },
    );
  }
}
