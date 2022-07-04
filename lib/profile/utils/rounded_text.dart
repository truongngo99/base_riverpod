// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class RoundedText extends StatelessWidget {
  const RoundedText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            background: 
            Paint()
              ..color = ColorName.roundedTextBackground
              ..strokeWidth = 18
              ..strokeJoin = StrokeJoin.round
              ..strokeCap = StrokeCap.round
              ..style = PaintingStyle.stroke,
            color: Colors.white,
          )),
    );
  }
}
