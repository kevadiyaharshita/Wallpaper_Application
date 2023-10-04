import 'package:flutter/material.dart';

import '../modals/Wallpaper_Modal.dart';

class Favourite_Controller extends ChangeNotifier {
  List<Wallpaper> favouritesWallpapers = [];

  addWallpaper({required Wallpaper wallpaper}) {
    if (favouritesWallpapers.contains(wallpaper)) {
      favouritesWallpapers.remove(wallpaper);
    } else {
      favouritesWallpapers.add(wallpaper);
    }
    notifyListeners();
  }

  bool checkFavourite({required Wallpaper wallpaper}) {
    if (favouritesWallpapers.contains(wallpaper)) {
      return true;
    } else {
      return false;
    }
    notifyListeners();
  }
}
