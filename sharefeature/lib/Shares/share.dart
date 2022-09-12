import 'package:flutter/material.dart';
import 'package:sharefeature/Shares/url.dart';
import 'package:sharefeature/Shares/tel.dart';
import 'package:sharefeature/Shares/sms.dart';

class SharePage extends StatelessWidget {
  const SharePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=> const UrlSection()));
                  },
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'PT Sans',
                      letterSpacing: 0.3,
                      fontSize: 18.0,
                    ),
                    side: const BorderSide(width: 3.0,color: Colors.white),
                    minimumSize: const Size(350,55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    animationDuration: const Duration(milliseconds: 100),
                  ),
                  icon: const Icon(Icons.launch_rounded,size: 22.0,color: Colors.white,),
                  label: const Text('Url Launcher Preview'),
                ),
                const SizedBox(height: 40.0,),
                OutlinedButton.icon(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=> const PhoneSection()));
                  },
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'PT Sans',
                      fontSize: 18.0,
                      letterSpacing: 0.3,
                    ),
                    side: const BorderSide(width: 3.0,color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    animationDuration: const Duration(milliseconds: 100),
                    minimumSize: const Size(350,55),
                  ),
                  icon: const Icon(Icons.phone_callback_rounded,size: 22.0,color: Colors.white,),
                  label: const Text('Phone Call Preview'),
                ),
                const SizedBox(height: 40.0,),
                OutlinedButton.icon(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=> const MessageSection()));
                  },
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'PT Sans',
                      letterSpacing: 0.3,
                      fontSize: 18.0,
                    ),
                    side: const BorderSide(width: 3.0,color: Colors.white),
                    minimumSize: const Size(350,55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    animationDuration: const Duration(milliseconds: 100),
                  ),
                  icon: const Icon(Icons.message_rounded,size: 22.0,color: Colors.white,),
                  label: const Text('SMS Sending Preview'),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}






