import 'package:flutter/material.dart';

import 'components/loginRegister/darkloginpage.dart';
import 'components/loginRegister/loginlistscreen/loginRegisterListScreen.dart';

List datas = [
  "Login Register",
  "Listview",
];

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: datas.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              switch (index){
                case 0:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginRegisterPage(),));
                  break;

                // case 1:
                //   Navigator.push(context, MaterialPageRoute(build.er: (context) => LoginRegisterListScreen(),));
                //   break;

              }
            },
            child: Text(datas[index]),
          );
        },
      ),
    );
  }
}
