import 'package:flutter/material.dart';
import 'package:stady/core/constants/color_const.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/welcome1.png", height: size.height),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorConst.kBlueColor.withOpacity(0.2),
                  ColorConst.kBlueColor.withOpacity(0.3),
                  ColorConst.kDarkBlueColor.withOpacity(0.91),
                  ColorConst.kDarkBlueColor,
                ],
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
