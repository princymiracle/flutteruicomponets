
import 'package:flutter/cupertino.dart';

class SimpleListModel {
  IconData icon;
  String title;

  SimpleListModel({
    required this.icon,
    required this.title,
  });

  factory SimpleListModel.fromJson(Map<String, dynamic> json) => SimpleListModel(
    icon: json["icon"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "icon": icon,
    "title": title,
  };
}
