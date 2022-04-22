import 'package:flutter/material.dart';
import 'package:stady/core/constants/color_const.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  MyAppBar({
    Key? key,
    this.title,
    this.action,
  }) : super(key: key);

  final Widget? title;
  final List<Widget>? action;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: ColorConst.kBlackColor),
      title: title,
      actions: action,
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(50.0);
  }
}
