import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Simpleregisterpage extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/img_b4.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text("REGISTER",style: TextStyle(color: Colors.teal,fontSize: 30.sp),),
                    ),
                  ],
                ),
              ),
              Center(
                child: Image.asset("assets/images/img_p2.png",height: 25.h,width: 30.w,),
              ),
              Column(
                children: [
                  CustomSimpleLoginTextFiled(
                    controller: usernameController,
                    maxLines: 1,
                    borderColor: Colors.grey,
                    prefixIcon: Icon(Icons.person, color: Colors.cyan),
                    readOnly: true,
                    lebal: 'Enter UserName',
                  ),
                  CustomSimpleLoginTextFiled(
                    controller: emailController,
                    maxLines: 1,
                    borderColor: Colors.grey,
                    prefixIcon: Icon(Icons.email_outlined, color: Colors.cyan),
                    readOnly: true,
                    lebal: 'Email',
                  ),
                  CustomSimpleLoginTextFiled(
                    controller: passController,
                    maxLines: 1,
                    borderColor: Colors.grey,
                    prefixIcon: Icon(Icons.lock_outline_sharp, color: Colors.cyan),
                    readOnly: true,
                    lebal: 'Password',
                  ),
                  CustomElevtedButton3(
                    title: 'REGISTER',
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Already Register?',
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                        children: [
                          TextSpan(
                            text: ' Log in',
                            style: TextStyle(fontSize: 17.sp, color: Colors.blue),
                          ),
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class CustomSimpleLoginTextFiled extends StatelessWidget {
  String lebal;
  Widget prefixIcon;
  TextEditingController controller;
  int? maxLength;
  VoidCallback? onTap;
  bool? readOnly;
  int? maxLines;
  TextInputType? keyboardType;
  bool? displayError;
  Color? borderColor;
  InputBorder? border;

  CustomSimpleLoginTextFiled({
    required this.lebal,
    required this.controller,
    required this.prefixIcon,
    this.maxLength,
    this.maxLines = 1,
    this.keyboardType,
    this.displayError,
    this.onTap,
    this.readOnly = false,
    this.borderColor = Colors.white,
    this.border,
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
          prefixIcon: prefixIcon,
          focusedBorder: border ??
              UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.cyan,
                ),
              ),
          disabledBorder: border ??
              UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
          label: Text(lebal,style: TextStyle(color: Colors.cyan),),
        ),
      ),
    );
  }
}

class CustomElevtedButton3 extends StatelessWidget {
  String title;
  double? fontSIze;
  FontWeight? fontWeight;
  double? radius;
  Color? pressedColor;
  Color? bgColor;
  Function? onTap;
  Color? fontColor;

  CustomElevtedButton3({
    required this.title,
    this.fontSIze,
    this.fontWeight,
    this.radius,
    this.pressedColor = const Color(0xffBDBCBA),
    this.bgColor =  Colors.cyan,
    this.onTap,
    this.fontColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
          onPressed: () => onTap!(),
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(50.w, 4.h)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? 15),
              ),
            ),
            overlayColor: MaterialStateProperty.all(pressedColor),
            backgroundColor: MaterialStateProperty.all(bgColor),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: fontSIze ?? 17.sp,
              color: fontColor,
            ),
          )),
    );
  }
}