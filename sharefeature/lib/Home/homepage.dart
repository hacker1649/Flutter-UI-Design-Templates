import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sharefeature/Shares/share.dart';
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
      const Duration(seconds:5),()=> Navigator.push(context,MaterialPageRoute(builder:(context)=> const SharePage())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Flutter Share Feature',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'PT Sans',
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 50.0,),
              SpinKitPouringHourGlassRefined(
                size: 40.0,
                color: Colors.white,
                duration: Duration(milliseconds: 500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






