// To parse this JSON data, do
//
//     final localVideoModel = localVideoModelFromJson(jsonString);

import 'dart:convert';

import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  String name;
  String videoUrl;
  int likes;
  int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    required this.likes,
    required this.views,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
        name: json["name"] ?? 'No name',
        videoUrl: json["videoUrl"],
        likes: json["likes"] ?? 0,
        views: json["views"] ?? 0,
      );

  VideoPost toVideoPostEntity() => VideoPost(
      caption: name, videoUrl: videoUrl, likes: likes, views: views, {});
}
