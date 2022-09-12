import 'package:flutter/material.dart';
import 'package:simplequotecard/Quotes Directory/dialog.dart';

class Screen extends StatelessWidget {
  final VoidCallback resetcardsButton;
  const Screen({required this.resetcardsButton});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Quotes Section Ended',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 50.0,),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => dialogBox(context,resetcardsButton),
                      barrierDismissible: false,
                      barrierColor: Colors.black54,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadowColor: Colors.white,
                    padding: const EdgeInsets.all(17.0),
                    elevation: 10.0,
                    minimumSize: const Size.fromHeight(50),
                    textStyle: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.5,
                    ),
                    primary: Colors.deepPurple[900],
                    onPrimary: Colors.black,
                  ),
                  child: const Text('Wanna review the Quotations again...'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




