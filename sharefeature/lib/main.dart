import 'package:flutter/material.dart';
import 'package:sharefeature/Home/homepage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Share Feature',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(20,20,100,1),
      ),
      home: const MyHomePage(),
    );
  }
}







