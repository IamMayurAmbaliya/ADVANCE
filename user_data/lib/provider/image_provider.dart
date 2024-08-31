import 'dart:io';
import 'package:flutter/material.dart';

class ImageProvider extends ChangeNotifier {
  File? _imageFile;

  File? get imageFile => _imageFile;

  void setImageFile(File? imageFile) {
    _imageFile = imageFile;
    notifyListeners();
  }
}
