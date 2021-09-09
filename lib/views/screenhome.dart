import 'package:dream/commponants/appbar_custom.dart';
import 'package:dream/commponants/drawerr.dart';
import 'package:dream/commponants/nav-custom-bar.dart';

import 'package:dream/views/photo.dart';
import 'package:dream/views/video.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List pages = [ScreenPhoto(), ScreenVideo()];

  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: appBarCustom(),
        drawer: DrawerCustom(),
        body: pages[page],
        bottomNavigationBar: NavCustombar(
            indexpage: page,
            onpress: (value) {
              setState(() {
                page = value;
              });
            }),
      ),
    );
  }
}
