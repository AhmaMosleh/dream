import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPhoto extends StatefulWidget {
  final String title;
  final String imagee;
  CardPhoto({
    required this.title,
    required this.imagee,
  });

  @override
  _CardPhotoState createState() => _CardPhotoState();
}

class _CardPhotoState extends State<CardPhoto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Card(
        elevation: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Image.asset(
                  widget.imagee,
                  fit: BoxFit.fitWidth,
                  filterQuality: FilterQuality.high,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            ),
            // Expanded(
            //     flex: 2,
            //     child: Container(
            //       margin: EdgeInsets.only(left: 5),
            //       child: Text(
            //         widget.title,
            //         style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
            //       ),
            //     )),
          ],
        ),
      ),
    );
  }
}
