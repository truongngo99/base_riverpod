import 'package:flutter/material.dart';

enum ClipPathType { top, bottom }

class CustomClipPath extends CustomClipper<Path> {
  var radius = 5.0;
  ClipPathType type = ClipPathType.bottom;

  @override
  Path getClip(Size size) {
    Path path = Path();
    switch (type) {
        case ClipPathType.bottom:
        path.lineTo(0, size.height);
        path.lineTo(size.width, size.height - 40);
        path.lineTo(size.width, 0);
        break;
        case ClipPathType.top:
        path.moveTo(0, 40);
        path.lineTo(size.width, 0);
        path.lineTo(size.width, size.height);
        path.lineTo(0, size.height);
        break;
    }
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
