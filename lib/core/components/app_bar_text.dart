
import 'package:flutter/material.dart';
import 'package:stady/core/constants/color_const.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: ColorConst.kBlackColor,
        fontSize: 17,
        fontFamily: "poppins",
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
