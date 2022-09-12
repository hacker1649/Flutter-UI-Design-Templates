import 'package:flutter/material.dart';

Widget dialogBox(BuildContext context,VoidCallback resetcardsButton){
  return AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    elevation: 10.0,
    backgroundColor: const Color.fromRGBO(10,10,60,1),
    insetPadding: const EdgeInsets.all(20),
    title: const Text('Review Dialog Screen'),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontFamily: 'PT Sans',
      fontSize: 20.0,
      fontWeight: FontWeight.w900,
    ),
    titlePadding: const EdgeInsets.only(top: 20.0,left: 15.0,),
    content: const Text('Wanna review the Quotations again?\nClick this reset button to reset the Quote Section.'),
    contentTextStyle: const TextStyle(
      color: Colors.white,
      fontFamily: 'Poppins',
      fontSize: 13.0,
      letterSpacing: 0.2,
      fontWeight: FontWeight.bold,
    ),
    contentPadding: const EdgeInsets.only(top: 25.0,left: 15.0,bottom: 25.0,right: 20.0,),
    actions: [
      ElevatedButton.icon(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.close_rounded,size: 25.0,),
        label: const Text('Dismiss'),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          shadowColor: Colors.amber,
          padding: const EdgeInsets.all(13.0),
          elevation: 5.0,
          textStyle: const TextStyle(
            fontSize: 15.0,
            fontFamily: 'PT Sans',
            fontWeight: FontWeight.w900,
            letterSpacing: 0.5,
          ),
          primary: Colors.deepPurple[900],
          onPrimary: Colors.black,
        ),
      ),
      const SizedBox(width: 3.0,),
      ElevatedButton.icon(
        onPressed: () {
          Navigator.pop(context);
          resetcardsButton();
        },
        icon: const Icon(Icons.restart_alt_rounded,size: 25.0,),
        label: const Text('Reset'),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          shadowColor: Colors.amber,
          padding: const EdgeInsets.all(13.0),
          elevation: 5.0,
          textStyle: const TextStyle(
            fontSize: 15.0,
            fontFamily: 'PT Sans',
            fontWeight: FontWeight.w900,
            letterSpacing: 0.5,
          ),
          primary: Colors.deepPurple[900],
          onPrimary: Colors.black,
        ),
      ),
    ],
    actionsAlignment: MainAxisAlignment.end,
    actionsPadding: const EdgeInsets.all(8.0),
  );
}






