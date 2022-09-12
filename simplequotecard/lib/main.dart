import 'package:flutter/material.dart';
import 'package:simplequotecard/Home/homepage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Motivational Quotes On Cards',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(0,0,200,0.25),
      ),
      home: const MyHomePage(),
    );
  }
}





