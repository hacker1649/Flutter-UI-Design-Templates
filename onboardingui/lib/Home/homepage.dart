import 'dart:async';
import 'package:flutter/material.dart';
import 'package:onboardingui/Screen/introscreen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds:3),()=> Navigator.push(context,MaterialPageRoute(builder:(context)=> const IntroScreen())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Education Portal',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontFamily: 'Poppins',
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}





