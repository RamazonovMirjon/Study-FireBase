import 'package:flutter/material.dart';
import 'package:stady/core/constants/color_const.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    bool value = false;
    var textStyle = TextStyle(
      color: ColorConst.kBlackColor,
      fontSize: 15,
      fontFamily: "poppins",
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: ColorConst.kBlackColor),
        title: Text(
          "Sign up",
          style: TextStyle(
            color: ColorConst.kBlackColor,
            fontSize: 17,
            fontFamily: "poppins",
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name", style: textStyle),
                  SizedBox(height: size.height * 0.01),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                        hintText: "Your name",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  SizedBox(height: size.height * 0.015),
                  Text("Email", style: textStyle),
                  SizedBox(height: size.height * 0.01),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                        hintText: "study@email.com",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  SizedBox(height: size.height * 0.015),
                  Text("Password", style: textStyle),
                  SizedBox(height: size.height * 0.01),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                        hintText: "Your Password",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  SizedBox(height: size.height * 0.015),
                  Text("Phone Number", style: textStyle),
                  SizedBox(height: size.height * 0.01),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                        hintText: "0334 xxxx xxxx",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  SizedBox(height: size.height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(value: value, onChanged: (value) {}),
                      SizedBox(
                        height: size.height * 0.07,
                        width: size.width * 0.7,
                        child: Text(
                          "I agree with the terms and conditions and also the protection of my personal data on this application",
                          softWrap: true,
                          style: TextStyle(
                            color: ColorConst.kBlackColor,
                            fontSize: 13,
                            fontFamily: "poppins",
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: size.height * 0.1),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: ColorConst.kButtonColor),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: ColorConst.kWhiteColor,
                            fontFamily: "Poppins",
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
