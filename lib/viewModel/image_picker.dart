import 'dart:developer';

import 'package:finapp/index.dart';

class ImagePickerProvider with ChangeNotifier {
  String _image = "";
  String get image => _image;
  void changeImage(String image) {
    log(image);
    _image = image;
    notifyListeners();
  }
}
