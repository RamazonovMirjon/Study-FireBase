import 'package:flutter/material.dart';
import 'package:stady/core/components/circle_avatar_three.dart';
import 'package:stady/core/constants/color_const.dart';
import 'package:stady/screens/start/components/backgraund.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      image: "assets/images/welcome3.jpg",
      widget: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Explore more skills",
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
            SizedBox(height: size.height * 0.08),
            Center(child: circleAvatarthree(2)),
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: ColorConst.kGreyColor.withOpacity(0.3),
                    radius: 31,
                    child: Icon(Icons.arrow_back_outlined,
                        color: ColorConst.kButtonColor),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/onboarding3");
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
    );
  }
}
