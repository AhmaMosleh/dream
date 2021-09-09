import 'package:dream/views/feedback.dart';
import 'package:dream/views/screenhome.dart';
import 'package:dream/views/settings.dart';

import 'package:flutter/material.dart';

class DrawerCustom extends StatefulWidget {
  @override
  _nameState createState() => _nameState();
}

// ignore: camel_case_types
class _nameState extends State<DrawerCustom> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/dontlosehope.jpeg'),
                    radius: 60,
                  ),
                  Text(
                    "Don't lose Hope",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScreenHome(),
                        ),
                      );
                    },
                    child: Text(
                      'Home',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Settings(),
                        ),
                      );
                    },
                    child: Text(
                      'App Setting',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.feedback,
                color: Colors.purple,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FeedBackk(),
                        ),
                      );
                    },
                    child: Text(
                      'feedback',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
