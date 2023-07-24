import 'package:flutter/material.dart';
import 'package:ui_application/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Flutter Demo',
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
