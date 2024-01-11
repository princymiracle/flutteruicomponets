import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../ListViewScreen.dart';

class BouncyListPage extends StatelessWidget {
  const BouncyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Get.off(ListViewListPage()),
            child: Icon(Icons.arrow_back, color: Colors.white)),
        title: Text("Bouncy List", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff77BAC7),
      ),
    );
  }
}
