
import 'package:flutter/material.dart';

extension ImageX on Image {
  Image iconify([double size = 24]) {
    return Image(width: size, height: size, image: image);
  } 
}