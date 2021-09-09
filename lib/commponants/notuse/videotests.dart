import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

class Videotest extends StatefulWidget {
  @override
  _VideotestState createState() => _VideotestState();
}

class _VideotestState extends State<Videotest> {
  late ChewieController _chewieController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }
}
