import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_app/helpers/api_helper.dart';

import '../modals/Wallpaper_Modal.dart';

class WallpaperController extends ChangeNotifier {
  List<Wallpaper> allWallpaper = [];
  List<Wallpaper> allCategoryWallpaper = [];

  Future<List<Wallpaper>?> getAllCategoryWallpapers(
      {String query = 'Colors'}) async {
    allCategoryWallpaper =
        await ApiHelper.apiHelper.getWallPapers(query: query) ?? [];
    notifyListeners();
    return allCategoryWallpaper;
  }

  WallpaperController() {
    getAllWallpapers();
  }

  Future<List<Wallpaper>?> getAllWallpapers({String query = 'Colors'}) async {
    allWallpaper = await ApiHelper.apiHelper.getWallPapers(query: query) ?? [];
    notifyListeners();
    return allWallpaper;
  }

  setWallPaper({required String link, required int platform}) async {
    await AsyncWallpaper.setWallpaper(
      url: link,
      wallpaperLocation: platform,
      toastDetails: ToastDetails.success(),
      errorToastDetails: ToastDetails.error(),
      goToHome: true,
    );
  }
}
