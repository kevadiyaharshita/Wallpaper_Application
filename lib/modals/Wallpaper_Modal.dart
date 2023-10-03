import 'dart:convert';

class Wallpaper {
  String tags;
  String largeImageURL;
  int views;
  // int download;
  // int like;
  // int comments;

  Wallpaper(
    this.tags,
    this.largeImageURL,
    this.views,
  );

  factory Wallpaper.fromJson({required Map json}) {
    return Wallpaper(
      json['tags'],
      json['largeImageURL'],
      json['views'],
    );
  }
}
