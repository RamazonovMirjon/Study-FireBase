import 'package:flutter/material.dart';
import 'package:stady/core/constants/color_const.dart';
import 'package:stady/screens/start/welcome/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          ],
        ),
        
      ],
    ),);
  }
}
