import 'package:flutter/material.dart';
import 'package:flutteruicomponets/components/ListView/ListViewScreen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ExpandableListPage extends StatelessWidget {
  const ExpandableListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Get.off(ListViewListPage()),
            child: Icon(Icons.arrow_back, color: Colors.white)),
        title: Text("Expandable Demo", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff77BAC7),
      ),
    );
  }
}
