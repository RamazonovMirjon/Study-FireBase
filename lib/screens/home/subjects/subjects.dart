import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stady/core/components/app_bar_text.dart';
import 'package:stady/core/components/my_app_bar.dart';
import 'package:stady/data/subjects_data.dart';

class Subjects extends StatelessWidget {
  const Subjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: const AppBarText(text: "Subjects")),
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
                color: SciencesData.sciencesColor[index].withOpacity(0.15),
              ),
              child: SvgPicture.asset(SciencesData.sciencesUrl[index]),
            ),
            Text(SciencesData.sciencesShortName[index]),
          ],
        ),
        itemCount: SciencesData.sciencesColor.length,
      ),
    );
  }
}
