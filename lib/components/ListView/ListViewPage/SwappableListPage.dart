import 'package:flutter/material.dart';
import 'package:flutteruicomponets/components/ListView/ListViewScreen.dart';
import 'package:get/route_manager.dart';

class SwappableListPage extends StatelessWidget {
  const SwappableListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Get.off(ListViewListPage()),
            child: Icon(Icons.arrow_back, color: Colors.white)),
        title: Text("Swappable List", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff77BAC7),
      ),
    );
  }
}
