import 'package:flutter/foundation.dart';

class PostModal {
  int id;
  String title;
  String body;

  PostModal({required this.id, required this.title, required this.body});

  factory PostModal.fromMap({required Map data}) {
    return PostModal(id: data['id'], title: data['title'], body: data['body']);
  }
}
