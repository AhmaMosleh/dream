import 'package:chewie/chewie.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

//
class VideosControllers extends StatefulWidget {
  @override
  _VideosControllersState createState() => _VideosControllersState();
  final VideoPlayerController videoPlayerControllerss;
  final bool looping;
  final bool autoplayer;

  VideosControllers({
    required this.videoPlayerControllerss,
    required this.looping,
    required this.autoplayer,
  });
}

class _VideosControllersState extends State<VideosControllers> {
  late ChewieController _chewieController;
  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
        videoPlayerController: widget.videoPlayerControllerss,
        aspectRatio: 5 / 8,
        autoInitialize: true,
        autoPlay: widget.autoplayer,
        looping: widget.looping,
        errorBuilder: (context, errorMassage) {
          return Center(
            child: Text(
              errorMassage,
              style: TextStyle(color: Colors.white),
            ),
          );
        });
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
        elevation: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}


// VideosControllers(
//         videoPlayerController:
//             VideoPlayerController.asset('assets\video\1.mp4'),
//         looping: true,
//         autoplayer: true);
