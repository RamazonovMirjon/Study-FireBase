import 'package:flutter/material.dart';
import 'package:stady/core/constants/color_const.dart';
import 'package:stady/screens/start/Onboarding/components/backgraund.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      image: "assets/images/welcome4.jpg",
      widget: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Get the best class, with the best teacher",
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
            Center(
              child: SizedBox(
                width: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                        radius: 2,
                        backgroundColor:
                            ColorConst.kButtonColor.withOpacity(0.3)),
                    CircleAvatar(
                        radius: 2,
                        backgroundColor:
                            ColorConst.kButtonColor.withOpacity(0.3)),
                    CircleAvatar(
                        radius: 4, backgroundColor: ColorConst.kButtonColor),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Text(
                    "Sign Up",
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
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: ColorConst.kButtonColor,
                      fontFamily: "Poppins",
                      fontSize: 15,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/signin");
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
