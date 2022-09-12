import 'package:flutter/material.dart';
import 'package:simplequotecard/Quotes Directory/quotetocard.dart';
import 'package:simplequotecard/Quotes Directory/endingscreen.dart';

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  var quotes= [
    {
      'quotetext': '"Start writing, no matter what. The water does not flow until the faucet is turned on."',
      'quoteauthor': 'Louis L\' Amour',
    },
    {
      'quotetext': '"Get it down. Take chances. It may be bad, but it\'s the only way you can do anything really good."',
      'quoteauthor': 'William Faulkner',
    },
    {
      'quotetext': '"The first draft is just you telling yourself the story."',
      'quoteauthor': 'Terry Pratchett',
    },
    {
      'quotetext': '"You don\'t start out writing good stuff. You start out writing crap and thinking it\'s good stuff, and then gradually you get better at it."',
      'quoteauthor': 'Octavia E. Butler',
    },
    {
      'quotetext': '"Start before you\'re ready."',
      'quoteauthor': 'Steven Pressfield',
    },
    {
      'quotetext': '"You can always edit a bad page. You can\'t edit a blank page."',
      'quoteauthor': 'Jodi Picoult',
    },
    {
      'quotetext': '"You can\'t wait for inspiration. You have to go after it with a club."',
      'quoteauthor': 'Jack London',
    },
    {
      'quotetext': '"I have never started a poem yet whose end I knew. Writing a poem is discovering."',
      'quoteauthor': 'Robert Frost',
    },
    {
      'quotetext': '"If there\'s a book that you want to read, but it hasn\'t been written yet, then you must write it."',
      'quoteauthor': 'Toni Morrison',
    },
    {
      'quotetext': '"I am writing a first draft and reminding myself that I\'m simply shoveling sand into a box so that later I can build castles."',
      'quoteauthor': 'Shannon Hale',
    },
    {
      'quotetext': '"I get a lot of letters from people. They say, \'I want to be a writer. What should I do?\' I tell them to stop writing to me and get on with it."',
      'quoteauthor': 'Ruth Rendell',
    },
    {
      'quotetext': '"First, find out what your hero wants, then just follow him!"',
      'quoteauthor': 'Ray Bradbury',
    },
    {
      'quotetext': '"The greatest part of a writer\'s time is spent in reading, in order to write. A man will turn over half a library to make a book."',
      'quoteauthor': 'Samuel Johnson',
    },
    {
      'quotetext': '"Writing a novel is like driving a car at night. You can only see as far as your headlights, but you can make the whole trip that way."',
      'quoteauthor': 'E. L. Doctorow',
    },
    {
      'quotetext': '"To produce a mighty book, you must choose a mighty theme."',
      'quoteauthor': 'Herman Melville',
    },
  ];
  int index=0;
  void nButtonHandler(){
    setState(() {
      index=index+1;
    });
  }
  void pButtonHandler(){
    setState(() {
      if(index>0){
        index=index-1;
      }
    });
  }
  void resetHandler(){
    setState(() {
      index=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: index<quotes.length
          ? QuoteToCard(
            cardtext: quotes[index]['quotetext'].toString(),
            cardauthor: quotes[index]['quoteauthor'].toString(),
            nextcard: nButtonHandler,
            previouscard: pButtonHandler,
          )
          : Screen(resetcardsButton: resetHandler),
      ),
    );
  }
}




