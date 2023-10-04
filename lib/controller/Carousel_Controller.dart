import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class Carousel_Controller extends ChangeNotifier {
  final CarouselController _carouselController = CarouselController();
  int _current = 0;

  setCurrentIndex(int index) {
    _current = index;
    notifyListeners();
  }

  get getCurrentIndex {
    return _current;
  }

  get getController {
    return _carouselController;
  }
}
