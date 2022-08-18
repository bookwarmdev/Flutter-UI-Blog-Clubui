import 'package:flutter/material.dart';

class StatusModel {
  String name;
  String imagePath;
  String icon;
  Color color;

  StatusModel({
    required this.color,
    required this.imagePath,
    required this.name,
    required this.icon,
  });
}

class Status {
  List<StatusModel> getAllStatus = [
    StatusModel(
      color: Color(0xfff4dc4e7),
      imagePath: "placeholder.png",
      icon: "video.svg",
      name: "Emilia",
    ),
    StatusModel(
      color: Color(0xfffFE9063),
      imagePath: "placeholder2.png",
      icon: "lotus.svg",
      name: "Richard",
    ),
    StatusModel(
      color: Color(0xfff7d4c9b),
      imagePath: "placeholder3.png",
      icon: "lamp.svg",
      name: "Jasmine",
    ),
    StatusModel(
      color: Color(0xfff4FF7067),
      imagePath: "placeholder4.png",
      icon: "heart1.svg",
      name: "Lucas",
    ),
    StatusModel(
      color: Color(0xfff4dc4e7),
      imagePath: "placeholder5.png",
      icon: "video.svg",
      name: "Hendri",
    ),
  ];
}
