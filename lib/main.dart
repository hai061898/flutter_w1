import 'package:flutter/material.dart';
import 'package:w_1/utils/color.dart';

import 'pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Dongle",
        canvasColor: kBgColor,
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
