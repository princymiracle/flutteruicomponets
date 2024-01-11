import 'package:flutter/material.dart';
import 'package:flutteruicomponets/components/AppsString.dart';
import 'package:get/get.dart';

import '../../ListViewScreen.dart';
import 'SimpleListModel.dart';

class SimpleListPage extends StatelessWidget {
  const SimpleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<SimpleListModel> simplepage = [
      SimpleListModel(icon: Icons.map,title: AppsString.Map),
      SimpleListModel(icon: Icons.photo_album_rounded,title: AppsString.Album),
      SimpleListModel(icon: Icons.phone,title: AppsString.Phone),
      SimpleListModel(icon: Icons.desktop_windows,title: AppsString.DeskTopMAC),
      SimpleListModel(icon: Icons.device_hub_outlined,title: AppsString.DeviceHub),
      SimpleListModel(icon: Icons.fastfood,title: AppsString.FastFood),
      SimpleListModel(icon: Icons.flag,title: AppsString.Flag),
      SimpleListModel(icon: Icons.file_copy,title: AppsString.Folder),
      SimpleListModel(icon: Icons.games,title: AppsString.Games),
      SimpleListModel(icon: Icons.keyboard_alt_outlined,title: AppsString.Keyboard),
      SimpleListModel(icon: Icons.group,title: AppsString.Group),
      SimpleListModel(icon: Icons.headset_rounded,title: AppsString.Geadset),
      SimpleListModel(icon: Icons.home,title: AppsString.Home),
      SimpleListModel(icon: Icons.chat,title: AppsString.Chart),

    ];

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Get.off(ListViewListPage()),
            child: Icon(Icons.arrow_back, color: Colors.white)),
        title: Text("Simpl List", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff77BAC7),
      ),
      body: ListView.builder(
        itemCount: simplepage.length,
          itemBuilder: (context, index) {
          return ListTile(
            title: Text(simplepage[index].title,style: TextStyle(fontWeight: FontWeight.bold),),
            leading: Icon(simplepage[index].icon,color: Color(0xff77BAC7),),
          );
          }
      ),
    );
  }
}
