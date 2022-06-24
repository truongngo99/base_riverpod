import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class A extends StatelessWidget {
  const A
({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// const colorBlack84 = Color(0xFF2A2A2A);
// const colorDanger = Color(0xFFF77B74);
// const colorWarning = Color(0xDFF8D20F);
// const colorIsanaBlue = Color(0xFF01A7D9);
// const colorGray = Color.fromARGB(70, 0, 0, 0);

// const colorWhite = Colors.white;
// const colorGrayNormal = Color(0x8F000000);

// const colorGrayBackground = Color(0xFFFAFAFA);
// const colorGray24 = Color(0x3D000000);
// const colorHoverIconButton = Colors.transparent;
// const colorHighlightIconButton = Colors.transparent;

// const colorBlack03 = Color(0xFFF7F7F7);
// const colorBlack56 = Color.fromRGBO(0, 0, 0, 0.56);

// const colorBackgroundLogin = Color(0xFF262c3d);
// const colorBackgroundTextField = Color(0xFF404553);

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorConstants {
  static MaterialStateProperty<Color> colorOrangeMaterial =
      MaterialStateProperty.all<Color>(ColorName.orangePrimary);
  static MaterialStateProperty<Color> colorGrayMaterial =
      MaterialStateProperty.all<Color>(ColorName.grey);
  static MaterialStateProperty<Color> colorWhiteMaterial =
      MaterialStateProperty.all<Color>(Colors.white);
}
 
