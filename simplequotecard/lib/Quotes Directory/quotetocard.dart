import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuoteToCard extends StatelessWidget {
  final String cardtext;
  final String cardauthor;
  final VoidCallback nextcard;
  final VoidCallback previouscard;
  const QuoteToCard({
    required this.cardtext,
    required this.cardauthor,
    required this.nextcard,
    required this.previouscard,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  shadowColor: Colors.black,
                  color: Colors.grey.withOpacity(0.15),
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 25.0,),
                        Text(cardtext,
                          style: const TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            letterSpacing: 0.5,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 45.0,),
                        Text(cardauthor,
                          style: const TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'PT Sans',
                            color: Colors.amber,
                            letterSpacing: 0.7,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 25.0,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: SpeedDial(
          elevation: 15.0,
          visible: true,
          spacing: 13,
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
          activeBackgroundColor: Colors.red[900],
          activeForegroundColor: Colors.white,
          spaceBetweenChildren: 10,
          childrenButtonSize: const Size(50.0,50.0),
          buttonSize: const Size(45.0,45.0),
          overlayOpacity: 0.8,
          overlayColor: Colors.black,
          curve: Curves.fastOutSlowIn,
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: const IconThemeData(
            color: Colors.white,
            size: 29.0,
          ),
          children: [
            SpeedDialChild(
              visible: true,
              backgroundColor: Colors.green[900],
              foregroundColor: Colors.white,
              child: const Icon(Icons.skip_next_rounded,size: 30.0,),
              label: 'Go Next',
              labelStyle: const TextStyle(
                color: Colors.white,
                fontFamily: 'PT Sans',
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              labelBackgroundColor: Colors.black,
              onTap: nextcard,
            ),
            SpeedDialChild(
              visible: true,
              backgroundColor: Colors.green[900],
              foregroundColor: Colors.white,
              child: const Icon(Icons.skip_previous_rounded,size: 30.0,),
              label: 'Go Previous',
              labelStyle: const TextStyle(
                color: Colors.white,
                fontFamily: 'PT Sans',
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              labelBackgroundColor: Colors.black,
              onTap: previouscard,
            ),
          ],
        ),
      ),
    );
  }
}





