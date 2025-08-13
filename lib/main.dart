import 'package:flutter/material.dart';
import 'Login_page.dart';
import 'list_view.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      home: LoginPage(),
    );
  }
}
