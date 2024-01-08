import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  double? height;
  double? iconsize;
  Function? onBackTap;
  Widget? prefixIcon;
  Widget? suffixIcon;
  Color? appbarcolor;


  CustomAppBar({required this.title, this.height, this.iconsize,this.onBackTap,this.prefixIcon,this.suffixIcon,this.appbarcolor}) ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: prefixIcon,
      title: Text(title),
      backgroundColor: appbarcolor,
      actions: [
        Padding(
            padding: EdgeInsets.all(8.h),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: suffixIcon,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(70.w, height ?? (8.h));
}
