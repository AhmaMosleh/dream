import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar appBarCustom({String title = "Don't Lose Hope"}) {
  return AppBar(
    backgroundColor: Colors.black26,
    elevation: 10,
    iconTheme: IconThemeData(color: Colors.white),
    centerTitle: true,
    title: Text("Don't Lose Hope",
        style: GoogleFonts.abel(
            textStyle: TextStyle(color: Colors.white, fontSize: 25.0))),
    // actions: [
    //   Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: CircleAvatar(
    //       backgroundImage: AssetImage('assets/images/dontlosehope.jpeg'),
    //       radius: 20,
    //     ),
    //   )
    // ],
  );
}
