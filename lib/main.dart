import 'package:flutter/material.dart';

import 'screens/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gamers Portal',
      debugShowCheckedModeBanner: false,

      /// TODO Replace with your first screen class name
      home: LoginScreen(),
    );
  }
}
