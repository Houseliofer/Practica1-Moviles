import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica1/pages/home_page.dart';
import 'package:practica1/pages/login.dart';
import 'package:practica1/pages/onboarding_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      title: 'Baldurs App',
      theme: ThemeData.light(),
      home: LoginPage(),
      routes: {
        '/main':(BuildContext context) => LoginPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
