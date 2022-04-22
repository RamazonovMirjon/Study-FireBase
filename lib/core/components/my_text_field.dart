
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.pass = false,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool pass;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 16),
      child: TextFormField(
        obscureText: pass,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
    );
  }
}
