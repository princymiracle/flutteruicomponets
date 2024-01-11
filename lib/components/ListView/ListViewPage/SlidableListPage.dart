import 'package:flutter/material.dart';
import 'package:flutteruicomponets/components/ListView/ListViewScreen.dart';
import 'package:get/route_manager.dart';

class SlidableListPage extends StatelessWidget {
  const SlidableListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Get.off(ListViewListPage()),
            child: Icon(Icons.arrow_back, color: Colors.white)),
        title: Text("Slidable List", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff77BAC7),
      ),
    );
  }
}
