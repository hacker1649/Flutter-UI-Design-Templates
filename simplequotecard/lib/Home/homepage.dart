import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:simplequotecard/Quotes Directory/quotes.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
      const Duration(seconds:6),()=> Navigator.push(context,MaterialPageRoute(builder:(context)=> const Quotes())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset('assets/sticky.json',
                width: 300.0,
                height: 300.0,
              ),
            ),
            const Center(
              child: Text('Motivational Quotes Diary',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 50.0,),
            const SpinKitFoldingCube(
              size: 30,
              color: Colors.white,
              duration: Duration(milliseconds: 500),
            ),
          ],
        ),
      ),
    );
  }
}







