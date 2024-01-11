import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Lightregisterpage extends StatelessWidget {
  const Lightregisterpage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController confirmpassController = TextEditingController();

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
                          color: Color(0xffE1D9D1),
                        ),
                        height: 50.h,
                        width: 50.h,
                      ),
                    ),
                    Column(
                      children: [
                        CustomLightlTextFiled(
                          controller: usernameController,
                          maxLines: 1,
                          readOnly: true,
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          lebal: "Enter UserName",
                        ),
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
                        CustomLightlTextFiled(
                          controller: confirmpassController,
                          maxLines: 1,
                          readOnly: true,
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          lebal: "Confirm password",
                        ),
                        CustomElevtedButton2(
                          title: 'Register',
                        ),
                        RichText(
                          text: TextSpan(
                              text: 'Already Register?',
                              style: TextStyle(fontSize: 15.sp, color: Colors.white),
                              children: [
                                TextSpan(
                                  text: ' Log in',
                                  style: TextStyle(fontSize: 17.sp, color: Colors.cyan),
                                ),
                              ]),
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
                  color: Colors.cyan,
                  //color: Color(0xff68A6C),
                ),
              ),
          label: Text(lebal,style: TextStyle(color: Colors.white),),
          hintStyle: hintStyle,
        ),
      ),
    );
  }
}


class CustomElevtedButton2 extends StatelessWidget {
  String title;
  double? fontSIze;
  FontWeight? fontWeight;
  double? radius;
  Color? pressedColor;
  Color? bgColor;
  Function? onTap;
  Color? fontColor;

  CustomElevtedButton2({
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
