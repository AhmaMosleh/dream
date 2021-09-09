import 'package:dream/commponants/webview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardVideos extends StatelessWidget {
  final String videoassets;
  final String title;
  final String videourl;
  CardVideos({
    Key? key,
    required this.title,
    required this.videoassets,
    required this.videourl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AppWebView(
              url: videourl,
              title: title,
            ),
          ),
        );
      },
      child: SingleChildScrollView(
        child: Container(
          height: 200,
          child: Card(
            elevation: 10,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  child: Image.network(
                    videoassets,
                    fit: BoxFit.fill,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                )),
                // Expanded(
                //     flex: 2,
                //     child: Container(
                //       margin: EdgeInsets.only(left: 5),
                //       child: Text(
                //         title,
                //         style: GoogleFonts.aBeeZee(
                //             fontWeight: FontWeight.bold, fontSize: 20),
                //       ),
                //     ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
