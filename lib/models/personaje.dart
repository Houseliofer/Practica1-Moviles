import 'package:flutter/material.dart';

class ImagePersonaje {
  ImagePersonaje(
    this.image,
    this.color,
  );
  final String image;
  final Color color;
}

class Personaje {
  Personaje(
    this.name,
    this.raze,
    this.clas,
    this.description,
    this.listImage,
  );
  final String name;
  final String raze;
  final String clas;
  final String description;
  final List<ImagePersonaje> listImage;
}
