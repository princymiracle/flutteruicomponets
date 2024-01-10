import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class AnimatedregisterPage extends StatelessWidget {
  const AnimatedregisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController confirmpassController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/img_n1.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(70),
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 25.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                children: [
                  CustomAnimatedTextFiled(
                    controller: nameController,
                    maxLines: 1,
                    readOnly: true,
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    lebal: 'User Name',
                  ),
                  CustomAnimatedTextFiled(
                    controller: emailController,
                    maxLines: 1,
                    readOnly: true,
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    lebal: 'Email',
                  ),
                  CustomAnimatedTextFiled(
                    controller: passController,
                    maxLines: 1,
                    readOnly: true,
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    lebal: 'Password',
                  ),
                  CustomAnimatedTextFiled(
                    controller: confirmpassController,
                    maxLines: 1,
                    readOnly: true,
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    lebal: 'Confirm Password',
                  ),
                  CustomElevtedButton1(
                    title: 'Sign Up',
                  ),
                  SizedBox(height: 24.h,),
                  RichText(
                    text: TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(fontSize: 15.sp, color: Colors.white),
                        children: [
                          TextSpan(
                            text: '  Sign in',
                            style: TextStyle(fontSize: 17.sp, color: Colors.white),
                          ),
                        ]),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class CustomAnimatedTextFiled extends StatelessWidget {
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

  CustomAnimatedTextFiled({
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
                  color: Colors.white,
                ),
              ),
          label: Text(lebal,style: TextStyle(color: Colors.white),),
          hintStyle: hintStyle,
        ),
      ),
    );
  }
}


class CustomElevtedButton1 extends StatelessWidget {
  String title;
  double? fontSIze;
  FontWeight? fontWeight;
  double? radius;
  Color? pressedColor;
  Color? bgColor;
  Function? onTap;
  Color? fontColor;

  CustomElevtedButton1({
    required this.title,
    this.fontSIze,
    this.fontWeight,
    this.radius,
    this.pressedColor = const Color(0xffBDBCBA),
    this.bgColor =  Colors.white,
    this.onTap,
    this.fontColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
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