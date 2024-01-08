import 'package:flutter/material.dart';

Color Login1PrimaryColor = Colors.black;

class Login1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login1"),
      ),
      body: Column(
        children: [
          Login1TextField(hinttext: "Enter email"),
          Login1TextField(hinttext: "Enter password"),
        ],
      ),
    );
  }
}

class Login1TextField extends StatelessWidget {
  String hinttext;

  Login1TextField({required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hinttext,
      ),
      onTap: () {

      },
    );
  }
}
