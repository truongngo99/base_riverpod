// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:base_riverpod/gen/colors.gen.dart';

class RoundedTextContainer extends StatelessWidget {
  const RoundedTextContainer({
    Key? key,
    required this.text,
    this.containerWidth,
  }) : super(key: key);

  final String text;
  final double? containerWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: ColorName.roundedTextBackground,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),
        ),
      ),
    );
  }
}
