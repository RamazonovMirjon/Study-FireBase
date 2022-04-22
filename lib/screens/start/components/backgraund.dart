import 'package:flutter/material.dart';
import 'package:stady/core/components/emblema.dart';
import 'package:stady/core/constants/color_const.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.image,
    required this.widget,
  }) : super(key: key);

  final String image;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image:  DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  opacity: 0.5),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  ColorConst.kBlueColor.withOpacity(0.2),
                  ColorConst.kBlueColor.withOpacity(0.3),
                  ColorConst.kDarkBlueColor,
                  ColorConst.kDarkBlueColor,
                ],
              ),
            ),
            alignment: const Alignment(0, 0.8),
            child: const Emblema(size: 1.44),
          ),
        ),
        Expanded(
          child: widget,
        ),
      ],
    ));
  }
}
