import 'package:cloud_firestore/cloud_firestore.dart';

class PhrasesModel {
  String author;
  String description;
  String source;
  String id;
  Timestamp? createdAt;
  Map json;

  PhrasesModel({
    required this.author,
    required this.description,
    required this.source,
    required this.id,
    required this.json,
    required this.createdAt,
  });

  factory PhrasesModel.fromJson(Map<String, dynamic> json) {
    return PhrasesModel(
      author: json['author'],
      description: json['description'],
      source: json['source'],
      id: json['id'],
      createdAt: json['createdAt'],
      json: json,
    );
  }
}