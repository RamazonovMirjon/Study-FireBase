import 'package:flutter/material.dart';
import 'package:stady/routes/my_routes.dart';
import 'package:stady/screens/start/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final MyRoute _myRoute = MyRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StadyApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "start",
      onGenerateRoute: _myRoute.onGenerateRoute,
      home: const WelcomeScreen(),
    );
  }
}
