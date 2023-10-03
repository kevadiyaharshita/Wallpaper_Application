import 'package:flutter/material.dart';

class ButtonController extends ChangeNotifier {
  bool _isOpened = false;

  setIsOpened() {
    _isOpened = !_isOpened;
    notifyListeners();
  }

  get getIsOpened {
    return _isOpened;
  }
}
