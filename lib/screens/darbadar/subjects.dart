import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stady/core/constants/color_const.dart';
import 'package:stady/data/subjects_data.dart';
import 'package:stady/models/subjects_model.dart';

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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              height: 68,
              width: 68,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
                color: SubjectsData.subjectsColor[index].withOpacity(0.15),
              ),
              child: SvgPicture.asset(SubjectsData.subjectsUrl[index]),
            ),
            Text(SubjectsData.subjectName[index]),
          ],
        ),
        itemCount: SubjectsData.subjectsColor.length,
      ),
    );
  }
}
