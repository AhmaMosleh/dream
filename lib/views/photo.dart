import 'package:dream/Controller/photos.dart';
import 'package:dream/Model/photos.dart';
import 'package:dream/commponants/card-photo.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenPhoto extends StatelessWidget {
  Controllerphoto _controllerphoto = Controllerphoto();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _controllerphoto.dataLenght,
          itemBuilder: (context, index) {
            List<ModelPhoto> _data = _controllerphoto.dataphoto;
            ModelPhoto snapchot = _data[index];

            return CardPhoto(
              title: snapchot.title,
              imagee: snapchot.imagee,
            );
          }),
    );
  }
}
