import 'package:flutter/material.dart';

import 'login1.dart';
List datas = [
  "Login1",
  "Login2",
];

class LoginRegisterListScreen extends StatelessWidget {
  const LoginRegisterListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: datas.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
          onTap: () {
            switch (index){
              case 0:
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login1(),));
                break;

              case 1:
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login1(),));
                break;

            }
          },
              child: Text(datas[index]));
        },
      ),
    );
  }
}
