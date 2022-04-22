import 'package:flutter/material.dart';
import 'package:stady/core/components/app_bar_text.dart';
import 'package:stady/core/components/my_app_bar.dart';
import 'package:stady/core/components/my_botton.dart';
import 'package:stady/core/components/my_text_field.dart';
import 'package:stady/core/constants/color_const.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
      appBar: MyAppBar(title: const AppBarText(text: "Sign up")),
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
                    MyTextField(
                      hintText: "Your name",
                      controller: _nameController,
                    ),
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
                    Text("Phone Number", style: textStyle),
                    MyTextField(
                      hintText: "0334 xxxx xxxx",
                      controller: _numberController,
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
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.1),
                    MyButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/interest");
                      },
                      text: "Sign Up",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
