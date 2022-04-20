import 'package:flutter/material.dart';
import 'package:stady/core/components/emblema.dart';
import 'package:stady/core/constants/color_const.dart';
import 'package:stady/screens/start/welcome/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Stack(
        children: [
          Positioned(
            right: size.width * 0.4,
            top: size.height * 0.08,
            child: const Emblema(),
          ),
          const _TextConst(),
          Positioned(
              bottom: 45,
              right: size.width * 0.28,
              left: size.width * 0.28,
              height: size.height * 0.07,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(primary: ColorConst.kButtonColor),
                child: Text(
                  "Let's Start",
                  style: TextStyle(
                      color: ColorConst.kWhiteColor,
                      fontFamily: "Poppins",
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),

                onPressed: () {
                  Navigator.pushNamed(context, "/onboarding3");
                },
              ))
        ],
      ),
    );
  }
}

class _TextConst extends StatelessWidget {
  const _TextConst({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 24,
      left: 24,
      bottom: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Hello and  welcome here!",
            style: TextStyle(
                color: ColorConst.kWhiteColor,
                fontFamily: "Poppins",
                fontSize: 32,
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Get an overview of how you are performing and motivate yourself to achieve even moew.",
            style: TextStyle(
              color: ColorConst.kWhiteColor.withOpacity(.4),
              fontFamily: "Poppins",
              fontSize: 13,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
