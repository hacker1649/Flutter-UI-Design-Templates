import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Create with the heart; build with the mind.',
            body: 'The word ‘development’ is widely used to refer to a specified state of advancement or growth. It could also be used to describe a new and advanced idea or product; or an event that constitutes a new stage under changing circumstances. Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.',
            image: buildImage('assets/rat.png'),
            decoration: const PageDecoration(
              imageFlex: 0,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'PT Sans',
                fontSize: 17.0,
                letterSpacing: 0.3,
                fontWeight: FontWeight.w900,
              ),
              bodyTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'PT Sans',
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          PageViewModel(
            title: 'Forget past mistakes. Forget failures. Forget everything except what you’re going to do now and do it.',
            body: 'The term business refers to an organization or enterprising entity engaged in commercial, industrial, or professional activities. The purpose of a business is to organize some sort of economic production (of goods or services). Businesses can be for-profit entities or non-profit organizations fulfilling a charitable mission or furthering a social cause.',
            image: buildImage('assets/worl.jpg'),
            decoration: const PageDecoration(
              imageFlex: 0,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'PT Sans',
                fontSize: 17.0,
                letterSpacing: 0.3,
                fontWeight: FontWeight.w900,
              ),
              bodyTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'PT Sans',
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          PageViewModel(
            title: 'The future of mobile is the future of online. It is how people access online content now.',
            body: 'A mobile application, most commonly referred to as an app, is a type of application software designed to run on a mobile device, such as a smartphone or tablet computer. Mobile applications frequently serve to provide users with similar services to those accessed on PCs.',
            image: buildImage('assets/motor.png'),
            decoration: const PageDecoration(
              imageFlex: 0,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'PT Sans',
                fontSize: 17.0,
                letterSpacing: 0.3,
                fontWeight: FontWeight.w900,
              ),
              bodyTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'PT Sans',
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          PageViewModel(
            title: 'The success of your presentation will be judged not by the knowledge you send but by what the listener receives.',
            body: 'Presentation skills are the abilities one needs in order to deliver compelling, engaging, informative, transformative, educational, enlightening, and/or instructive presentations. Central to effective presentation skills are public speaking, tone of voice, body language, creativity, and delivery.',
            image: buildImage('assets/hello.png'),
            decoration: const PageDecoration(
              imageFlex: 0,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'PT Sans',
                fontSize: 17.0,
                letterSpacing: 0.3,
                fontWeight: FontWeight.w900,
              ),
              bodyTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'PT Sans',
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          PageViewModel(
            title: 'Coming together is a beginning, staying together is progress, and working together is success.',
            body: 'Teamwork happens when people work together toward a common goal. That goal could be professional or personal. You can work as a team to move a couch up a flight of stairs, launch a work project, or play soccer. ',
            image: buildImage('assets/ok.jpg'),
            decoration: const PageDecoration(
              imageFlex: 0,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'PT Sans',
                fontSize: 17.0,
                letterSpacing: 0.3,
                fontWeight: FontWeight.w900,
              ),
              bodyTextStyle: TextStyle(
                color: Colors.black,
                fontFamily: 'PT Sans',
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
        curve: Curves.fastLinearToSlowEaseIn,
        showBackButton: false,
        back: const Icon(Icons.arrow_back_rounded),
        showSkipButton: true,
        skip: const Text('Skip'),
        skipStyle: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
          shadowColor: MaterialStateProperty.all(Colors.black),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.blue[900]),
          textStyle: MaterialStateProperty.all(const TextStyle(
            fontFamily: 'PT Sans',
            fontSize: 17.0,
            fontWeight: FontWeight.w800,
          )),
        ),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward_rounded),
        nextStyle: ButtonStyle(
          shadowColor: MaterialStateProperty.all(Colors.black),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.blue[900]),
          textStyle: MaterialStateProperty.all(const TextStyle(
            fontFamily: 'PT Sans',
            fontSize: 17.0,
            fontWeight: FontWeight.w800,
          )),
        ),
        showDoneButton: true,
        done: const Text('Continue'),
        doneStyle: ButtonStyle(
          shadowColor: MaterialStateProperty.all(Colors.black),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.blue[900]),
          textStyle: MaterialStateProperty.all(const TextStyle(
            fontFamily: 'PT Sans',
            fontSize: 17.0,
            fontWeight: FontWeight.w800,
          )),
        ),
        onDone: () {},
        globalBackgroundColor: Colors.white,
        dotsDecorator: DotsDecorator(
          color: Colors.grey,
          activeColor: Colors.blue[900],
          size: const Size(9,9),
          activeSize: const Size(16,9),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          )
        ),
        animationDuration: 500,
        onChange: (index) => debugPrint('Page #$index selected'),
      ),
    );
  }
  Widget buildImage(String imagePath){
    return Center(
      child: Image.asset(imagePath, width: 280,),
    );
  }
}






