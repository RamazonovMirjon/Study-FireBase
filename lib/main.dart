import 'package:flutter/material.dart';
import 'package:stady/screens/start/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StadyApp',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen()
    );
  }
}
