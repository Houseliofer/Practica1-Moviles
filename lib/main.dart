import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica1/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      title: 'Baldurs App',
      theme: ThemeData.dark(),
      home: const HomePageBaldur(),
      debugShowCheckedModeBanner: false,
    );
  }
}
