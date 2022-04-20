import 'package:flutter/material.dart';
import 'package:stady/core/constants/color_const.dart';

class Emblema extends StatelessWidget {
  const Emblema({
    Key? key,
    this.size = 1,
  }) : super(key: key);
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size * 25,
      width: size * 77,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            height: size * 24,
            width: size * 24,
            decoration: BoxDecoration(
                color: ColorConst.kWhiteColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(size * 9),
                )),
            child: CircleAvatar(
              backgroundColor: ColorConst.kBlueColor,
              radius: size * 7.5,
              child: CircleAvatar(
                backgroundColor: ColorConst.kWhiteColor,
                radius: size * 2.4,
              ),
            ),
          ),
          Text(
            "Study",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: ColorConst.kWhiteColor,
              fontFamily: "Poppins",
              fontSize: size * 15,
            ),
          )
        ],
      ),
    );
  }
}
