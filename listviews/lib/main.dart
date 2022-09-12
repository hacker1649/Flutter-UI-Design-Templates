import 'package:flutter/material.dart';
import 'package:listviews/Home/intro.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Instagram UI Demo Page',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: IntroScreen(),
    );
  }
}







