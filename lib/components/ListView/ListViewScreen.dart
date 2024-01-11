import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'package:flutteruicomponets/components/loginRegister/loginlistscreen/loginregistermodel.dart';

import 'package:get/get.dart';

class ListViewListPage extends StatelessWidget {
  List<ListViewModel> listview = [
    ListViewModel(text: "Simple List", screen: "/simplelistpage"),
    ListViewModel(text: "Bouncy List", screen: "/bouncylistpage"),
    ListViewModel(text: "Slidable List", screen: "/slidablelistpage"),
    ListViewModel(text: "Swappable List", screen: "/swappablelistpage"),
    ListViewModel(text: "Reorderable List", screen: "/reorderablelistpage"),
    ListViewModel(text: "Expandable List", screen: "/expandablelistpage"),
    ListViewModel(text: "Selection List", screen: "/selectionlistpage"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back, color: Colors.white),
          title: Text("List",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xff77BAC7),
        ),
        backgroundColor: Color(0xffE5E4E2),
        body: ListView.builder(
          itemCount: listview.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.toNamed(listview[index].screen);
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  shadowColor: Color(0xff0909FF),
                  child: Container(
                    height: 7.h,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    width: 2.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff43C6DB)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text(
                        listview[index].text,
                        style: TextStyle(
                          color: Color(0xff4545FF),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        )
    );
  }
}
