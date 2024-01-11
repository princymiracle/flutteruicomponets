import 'package:flutteruicomponets/components/loginRegister/animatedbackgroundpage.dart';
import 'package:flutteruicomponets/components/loginRegister/darkloginpage.dart';
import 'package:flutteruicomponets/components/loginRegister/lightloginpage.dart';
import 'package:flutteruicomponets/components/loginRegister/simpleloginpage.dart';
import 'package:flutteruicomponets/routes/route/routes.dart';
import 'package:get/get.dart';

import '../../components/ListView/ListViewPage/BouncyListPage.dart';
import '../../components/ListView/ListViewPage/ExpandableListPage.dart';
import '../../components/ListView/ListViewPage/ReorderableListPage.dart';
import '../../components/ListView/ListViewPage/SelectionListPage.dart';
import '../../components/ListView/ListViewPage/SimpleListPage/SimpleListPage.dart';
import '../../components/ListView/ListViewPage/SlidableListPage.dart';
import '../../components/ListView/ListViewPage/SwappableListPage.dart';
import '../../components/ListView/ListViewScreen.dart';
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

class Screens1{

  static final routes1 =[
    GetPage(name: Routes1.listpage, page: () => ListViewListPage(),),
    GetPage(name: Routes1.simplelistpage, page: () => SimpleListPage()),
    GetPage(name: Routes1.bouncylistpage, page: () => BouncyListPage()),
    GetPage(name: Routes1.slidablelistpage, page: () => SlidableListPage()),
    GetPage(name: Routes1.swappablelistpage, page: () => SwappableListPage()),
    GetPage(name: Routes1.reorderablelistpage, page: () => ReorderableListPage()),
    GetPage(name: Routes1.expandablelistpage, page: () => ExpandableListPage()),
    GetPage(name: Routes1.selectionlistpage, page: () => SelectionListPage()),
  ];

}