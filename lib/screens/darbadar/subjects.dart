import 'package:flutter/material.dart';
import 'package:stady/core/constants/color_const.dart';

class Subjects extends StatelessWidget {
  const Subjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: ColorConst.kBlackColor),
        title: Text(
          "Subjects",
          style: TextStyle(
            color: ColorConst.kBlackColor,
            fontSize: 17,
            fontFamily: "poppins",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      // body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,

      //   ),
      //   itemBuilder: ,
      // ),
    );
  }
}
