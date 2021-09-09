import 'package:dream/Controller/notuse/videoconroller.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Listvideos extends StatefulWidget {
  @override
  _ListvideosState createState() => _ListvideosState();
}

class _ListvideosState extends State<Listvideos> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: VideosControllers(
                  videoPlayerControllerss:
                      VideoPlayerController.asset('assets/video/2.mp4'),
                  looping: true,
                  autoplayer: true),
            ),
          ],
        );
      },
    );
  }
}
