import 'package:flutter/material.dart';

mySnackbar(String content, Color color, BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        content: Text(content),
        backgroundColor: color,
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height)),
  );
}
