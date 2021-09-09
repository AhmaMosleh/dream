import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(
          'Settings',
          style: GoogleFonts.aBeeZee(),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Card(
              color: Colors.black38,
              child: ListTile(
                title: Text(
                  'General',
                ),
              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: ListTile(
                title: Text('Thems'),
                onLongPress: () {
                  PopupMenuButton<String>(
                    onSelected: (String value) {
                      setState(() {});
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<String>>[
                      const PopupMenuItem<String>(
                        value: 'open',
                        child: Text('colors'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'delete',
                        child: Text('delete'),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              color: Colors.blueGrey,
              child: ListTile(title: Text('Preview Image Quality')),
            ),
            Container(
                color: Colors.blueGrey,
                child: CheckboxListTile(
                  title: Text('Image Auto Save '),
                  value: timeDilation != 2.0,
                  onChanged: (bool? value) {
                    setState(() {
                      timeDilation = value! ? 12.0 : 2.0;
                    });
                  },
                )),
            Card(
              color: Colors.black38,
              child: ListTile(
                title: Text(
                  'Notifications',
                ),
              ),
            ),
            Container(
                color: Colors.blueGrey,
                child: CheckboxListTile(
                  title: Text('Notifications'),
                  value: timeDilation != 1.0,
                  onChanged: (bool? value) {
                    setState(() {
                      timeDilation = value! ? 12.0 : 1.0;
                    });
                  },
                )),
          ],
        ),
      ),
    ));
  }
}
