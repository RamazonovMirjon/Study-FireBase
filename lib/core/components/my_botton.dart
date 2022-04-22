import 'package:flutter/material.dart';
import 'package:stady/core/constants/color_const.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorConst.kButtonColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        onPressed: () => onPressed(),
        child: Text(
          text,
          style: TextStyle(
              color: ColorConst.kWhiteColor,
              fontFamily: "Poppins",
              fontSize: 17,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
