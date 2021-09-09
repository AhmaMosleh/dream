import 'package:dream/Controller/listvideoo.dart';

import 'package:dream/Model/video.dart';

import 'package:dream/commponants/cardvideo.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenVideo extends StatelessWidget {
  ControllerVideo _controllerVideo = ControllerVideo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _controllerVideo.datalength,
        itemBuilder: (context, index) {
          List<ModelVideo> _data = _controllerVideo.datavideo;
          ModelVideo snapchot = _data[index];

          return CardVideos(
            videoassets: snapchot.assetsvideo,
            title: snapchot.title,
            videourl: snapchot.urlvideo,
          );
        },
      ),
    );
  }
}
