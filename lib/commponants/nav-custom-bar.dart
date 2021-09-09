import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavCustombar extends StatelessWidget {
  final int indexpage;

  final Function(int) onpress;
  NavCustombar({required this.indexpage, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: 0,
      color: Colors.black26,
      backgroundColor: Colors.black26,
      items: [
        Icon(
          Icons.article,
          color: indexpage == 0 ? Colors.white : Colors.grey,
        ),
        Icon(
          Icons.ondemand_video_outlined,
          color: indexpage == 1 ? Colors.white : Colors.grey,
        ),
      ],
      onTap: onpress,
    );
  }
}
