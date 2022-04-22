
  import 'package:flutter/material.dart';
import 'package:stady/core/constants/color_const.dart';

SizedBox circleAvatarthree(int check) {
    List<bool> list = [false, false, false];
    if (check >= 1 && check <= 3) {
      list[check - 1] = true;
    } else {
      list[2] = true;
    }
    return SizedBox(
      width: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: list[0] ? 4 : 2,
            backgroundColor: list[0]
                ? ColorConst.kButtonColor
                : ColorConst.kButtonColor.withOpacity(0.3),
          ),
          CircleAvatar(
            radius: list[1] ? 4 : 2,
            backgroundColor: list[1]
                ? ColorConst.kButtonColor
                : ColorConst.kButtonColor.withOpacity(0.3),
          ),
          CircleAvatar(
            radius: list[2] ? 4 : 2,
            backgroundColor: list[2]
                ? ColorConst.kButtonColor
                : ColorConst.kButtonColor.withOpacity(0.3),
          ),
        ],
      ),
    );
  }

