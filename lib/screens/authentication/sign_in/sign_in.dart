import 'package:flutter/material.dart';
import 'package:stady/core/components/app_bar_text.dart';
import 'package:stady/core/components/my_app_bar.dart';
import 'package:stady/core/components/my_botton.dart';
import 'package:stady/core/components/my_text_field.dart';
import 'package:stady/core/constants/color_const.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    TextEditingController _nameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passController = TextEditingController();
    TextEditingController _numberController = TextEditingController();

    bool value = false;
    var textStyle = TextStyle(
      color: ColorConst.kBlackColor,
      fontSize: 15,
      fontFamily: "poppins",
    );
    return Scaffold(
      appBar: MyAppBar(
        title: const AppBarText(text: "Sign in"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email", style: textStyle),
                  MyTextField(
                    hintText: "study@email.com",
                    controller: _emailController,
                  ),
                  Text("Password", style: textStyle),
                  MyTextField(
                    hintText: "Your Password",
                    controller: _passController,
                    pass: true,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: textStyle,
                      )),
                  SizedBox(height: size.height * 0.02),
                ],
              ),
            ),
            MyButton(
              onPressed: () {
                Navigator.pushNamed(context, "/interest");
              },
              text: "Sign In",
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
