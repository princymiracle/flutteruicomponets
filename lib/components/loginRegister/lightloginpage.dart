import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Lightloginpage extends StatelessWidget {
  const Lightloginpage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/img_bg3.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(70),
                child: Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/img_profil1.png"),
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(5.w),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Color(0xff686A6C),
                        ),
                        height: 40.h,
                        width: 50.h,
                      ),
                    ),
                    Column(
                      children: [
                        CustomLightlTextFiled(
                          controller: emailController,
                          maxLines: 1,
                          readOnly: true,
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          lebal: 'Email',
                        ),
                        CustomLightlTextFiled(
                          controller: passController,
                          maxLines: 1,
                          readOnly: true,
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          lebal: 'Password',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomLightlTextFiled extends StatelessWidget {
  String lebal;
  TextEditingController controller;
  int? maxLength;
  VoidCallback? onTap;
  bool? readOnly;
  int? maxLines;
  TextInputType? keyboardType;
  bool? displayError;
  Color? borderColor;
  InputBorder? border;
  TextStyle? hintStyle;

  CustomLightlTextFiled({
    required this.controller,
    required this.lebal,
    this.maxLength,
    this.maxLines = 1,
    this.keyboardType,
    this.displayError,
    this.onTap,
    this.readOnly = false,
    this.borderColor = Colors.white,
    this.border,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        controller: controller,
        maxLength: maxLength,
        maxLines: maxLines,
        onTap: onTap,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          enabledBorder: border ??
              UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
          focusedBorder: border ??
              UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff68A6C),
                ),
              ),
          label: Text(lebal,style: TextStyle(color: Colors.white),),
          hintStyle: hintStyle,
        ),
      ),
    );
  }
}