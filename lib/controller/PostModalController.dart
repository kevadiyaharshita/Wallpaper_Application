import 'package:flutter/material.dart';
import 'package:wallpaper_app/helpers/api_helper.dart';
import 'package:wallpaper_app/modals/Post_Modal.dart';

class PostModalController extends ChangeNotifier {
  PostModal? pm;

  getSingleData({required int id}) async {
    pm = await ApiHelper.apiHelper.getStringData(id: id);
    notifyListeners();
    return pm;
  }
}
