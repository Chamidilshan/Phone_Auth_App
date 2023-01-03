import 'package:flutter/material.dart';
import 'screens/welcomescreen.dart';
import 'package:country_picker/country_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      title: 'FlutterPhoneAuthApp',
    );
  }
}
