import 'dart:async';
import 'package:flutter/material.dart';
import 'package:listviews/Home/homepage.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds:1),()=> Navigator.push(context,MaterialPageRoute(builder:(context)=> MyHomePage())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Image.asset('assets/ttt.jpg',width: 150,height: 150,),
        ),
      ),
    );
  }
}







