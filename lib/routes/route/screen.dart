import 'package:flutteruicomponets/components/loginRegister/animatedbackgroundpage.dart';
import 'package:flutteruicomponets/components/loginRegister/darkloginpage.dart';
import 'package:flutteruicomponets/components/loginRegister/lightloginpage.dart';
import 'package:flutteruicomponets/components/loginRegister/simpleloginpage.dart';
import 'package:flutteruicomponets/routes/route/routes.dart';
import 'package:get/get.dart';

import '../../components/loginRegister/loginlistscreen/loginRegisterListScreen.dart';

class Screens{

  static final routes =[
    GetPage(name: Routes.darkloginpage, page: () => DarkLoginPage()),
    GetPage(name: Routes.animatedpage, page: () => AnimatedBackgroundPage()),
    GetPage(name: Routes.lightpage, page: () => Lightloginpage()),
    GetPage(name: Routes.simplepage, page: () => Simpleloginpage()),
    GetPage(name: Routes.loginpage, page: () => LoginRegisterPage()),
  ];
}