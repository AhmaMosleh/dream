import 'package:dream/Model/photos.dart';

class Controllerphoto {
  List<ModelPhoto> _dataPhoto = [
    ModelPhoto(title: '', imagee: 'assets/images/1.jpg'),
    ModelPhoto(title: '', imagee: 'assets/images/2.jpg'),
    ModelPhoto(title: '', imagee: 'assets/images/8.jpg'),
    ModelPhoto(title: '', imagee: 'assets/images/12.jpg'),
    ModelPhoto(title: '', imagee: 'assets/images/13.jpg'),
    ModelPhoto(title: '', imagee: 'assets/images/14.jpg'),
    ModelPhoto(title: '', imagee: 'assets/images/15.jpg'),
    ModelPhoto(title: '', imagee: 'assets/images/4.jpg'),
    ModelPhoto(title: '', imagee: 'assets/images/10.jpg'),
  ];

  List<ModelPhoto> get dataphoto => _dataPhoto;
  int get dataLenght => _dataPhoto.length;
}
