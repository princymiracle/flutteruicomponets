import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class DarkRegisterPage extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/images/img_background.png",
          fit: BoxFit.cover,
          height: 250.h,
          width: double.infinity,
        ),
        Column(children: [
          Padding(
            padding: const EdgeInsets.all(70),
            child: Center(
                child: Image.asset(
                  "assets/images/img_proflie.png",
                  height: 15.h,
                )),
          ),
          Column(
            children: [
              CustomDarkLoginTextFiled(
                controller: usernameController,
                maxLines: 1,
                hintext: "Enter UserName",
                borderColor: Colors.grey,
                prefixIcon: Icon(Icons.person, color: Colors.white),
                readOnly: true,
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              CustomDarkLoginTextFiled(
                controller: emailController,
                maxLines: 1,
                hintext: "Enter Email",
                borderColor: Colors.grey,
                prefixIcon: Icon(Icons.person, color: Colors.white),
                readOnly: true,
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              CustomDarkLoginTextFiled(
                controller: passController,
                maxLines: 1,
                hintext: "Enter password",
                borderColor: Colors.grey,
                prefixIcon: Icon(Icons.lock_outline_sharp, color: Colors.white),
                readOnly: true,
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              CustomDarkLoginTextFiled(
                controller: confirmpassController,
                maxLines: 1,
                hintext: "Confirm password",
                borderColor: Colors.grey,
                prefixIcon: Icon(Icons.lock_outline_sharp, color: Colors.white),
                readOnly: true,
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              CustomElevtedButton(
                title: "Sign up",
                pressedColor: Colors.white30,
              ),
              RichText(
                  text: TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(fontSize: 15.sp, color: Colors.white),
                    children: [
                      TextSpan(
                        text: '  Sign in',
                        style: TextStyle(fontSize: 17.sp, color: Colors.white),
                      ),
                    ],
                  )),
            ],
          )
        ]),
      ]),
    );
  }
}

class CustomDarkLoginTextFiled extends StatelessWidget {
  String hintext;
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
  TextStyle? hintStyle;

  CustomDarkLoginTextFiled({
    required this.controller,
    required this.prefixIcon,
    required this.hintext,
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
          prefixIcon: prefixIcon,
          focusedBorder: border ??
              UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
          hintText: hintext,
          disabledBorder: border ??
              UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
          hintStyle: hintStyle,
        ),
      ),
    );
  }
}

class CustomElevtedButton extends StatelessWidget {
  String title;
  double? fontSize;
  FontWeight? fontWeight;
  double? radius;
  Color? pressedColor;
  Color? bgColor;
  Function? onTap;
  Color? fontColor;

  CustomElevtedButton({
    required this.title,
    this.fontSize,
    this.fontWeight,
    this.radius,
    this.pressedColor = const Color(0xffBDBCBA),
    this.bgColor = const Color(0xff8D918D),
    this.onTap,
    this.fontColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: ElevatedButton(
        onPressed: () => onTap!(),
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(50.w, 4.h)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 5),
            )),
            overlayColor: MaterialStateProperty.all(pressedColor),
            backgroundColor: MaterialStateProperty.all(bgColor)),
        child: Text(
          title,
          style: TextStyle(fontSize: fontSize ?? 20.sp, color: fontColor),
        ),
      ),
    );
  }
}
