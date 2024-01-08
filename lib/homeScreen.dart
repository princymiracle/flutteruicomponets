import 'package:flutter/material.dart';

import 'components/loginRegister/login1.dart';
import 'components/loginRegister/loginRegisterListScreen.dart';

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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginRegisterListScreen(),));
                  break;

                case 1:
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginRegisterListScreen(),));
                  break;

              }
            },
            child: Text(datas[index]),
          );
        },
      ),
    );
  }
}
