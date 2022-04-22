import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stady/core/components/app_bar_text.dart';
import 'package:stady/core/components/circle_avatar_three.dart';
import 'package:stady/core/components/my_app_bar.dart';
import 'package:stady/core/components/my_botton.dart';
import 'package:stady/core/constants/color_const.dart';
import 'package:stady/data/subjects_data.dart';

class Interest extends StatelessWidget {
  const Interest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<bool> list =
        List.generate(SciencesData.sciencesName.length, (index) => false);
    return Scaffold(
      appBar: MyAppBar(title: circleAvatarthree(2), action: [
        TextButton(
          child: const AppBarText(text: "Skip"),
          onPressed: () {},
        ),
      ]),
      body: Column(
        children: [
          const Center(
            child: Text(
              "Choose your topic interest",
              style: TextStyle(fontSize: 24, fontFamily: "poppins"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit enim, ac amet ultrices.",
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: "poppins",
                  color: ColorConst.kBlackColor.withOpacity(0.8)),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
                itemBuilder: ((BuildContext context, int index) => ListTile(
                      title: Text(SciencesData.sciencesName[index]),
                      subtitle: Text(SciencesData.sciencesOtherNames[index]),
                      trailing: Checkbox(
                        onChanged: (value) {},
                        value: list[index],
                      ),
                      leading: CircleAvatar(
                        backgroundColor:
                            SciencesData.sciencesColor[index].withOpacity(0.15),
                        radius: 25,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child:
                              SvgPicture.asset(SciencesData.sciencesUrl[index]),
                        ),
                      ),
                    )),
                separatorBuilder: (BuildContext context, int index) =>
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(),
                    ),
                itemCount: list.length),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            child: MyButton(text: "Continue", onPressed: (){
              
            }),
          )
        ],
      ),
    );
  }
}
