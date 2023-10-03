import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wallpaper_app/modals/Wallpaper_Modal.dart';

import '../modals/Post_Modal.dart';

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  String api = 'https://jsonplaceholder.typicode.com/posts';
  String wallpaperApi =
      'https://pixabay.com/api/?key=39795250-cfa98b8d5a4f1d182aed170a0';

  Future<List<Wallpaper>?> getWallPapers({String query = 'Colors'}) async {
    http.Response response =
        await http.get(Uri.parse('$wallpaperApi&q=$query'));

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List allData = data['hits'];

      List<Wallpaper> allWallpapers = allData
          .map(
            (e) => Wallpaper.fromJson(json: e),
          )
          .toList();
      return allWallpapers;
    } else {
      return null;
    }
  }

  Future<PostModal?> getStringData({required int id}) async {
    http.Response response = await http.get(Uri.parse("$api/$id"));

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      PostModal pm = PostModal.fromMap(data: data);
      return pm;
    } else {
      return null;
    }
  }
}
