import 'package:flutter/material.dart';
import 'package:stady/core/components/circle_avatar_three.dart';
import 'package:stady/core/constants/color_const.dart';
import 'package:stady/screens/start/components/backgraund.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      image: "assets/images/welcome2.png",
      widget: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Find your favorite class",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit enim, ac amet ultrices.",
                  style: TextStyle(
                    color: ColorConst.kGreyColor,
                    fontFamily: "Poppins",
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: ColorConst.kButtonColor,
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/onboarding2");
                      },
                      child: CircleAvatar(
                        backgroundColor: ColorConst.kButtonColor,
                        radius: 31,
                        child: Icon(Icons.arrow_forward_outlined,
                            color: ColorConst.kWhiteColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 150,
            right: 150,
            child: circleAvatarthree(1),
          )
        ],
      ),
    );
  }
}
