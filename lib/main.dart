import 'package:flutter/material.dart';
import 'package:utsmobileprogramming/pages/Home_page.dart';
import 'package:utsmobileprogramming/pages/Login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginScreen(),
        '/Home_page': (context) => HomePages(),
      },
    );
  }
}
