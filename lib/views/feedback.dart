import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedBackk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Text(
            'FeedBack',
            style: GoogleFonts.aBeeZee(),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: Text(
              'Every human being in this world has a dream and does the impossible until he reaches his dream.. and if we fail we will put the right to life... at the beginning we must know why God created us in this life... review yourself and chart your path step by step...We all need an app that motivates us, encourages us and reminds us of our dream and never lose hope at any cost.',
              style: GoogleFonts.robotoMono(
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
