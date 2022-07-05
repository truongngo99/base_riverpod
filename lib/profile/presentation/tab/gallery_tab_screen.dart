import 'package:flutter/material.dart';

class GalleryTabScreen extends StatefulWidget {
  GalleryTabScreen({Key? key}) : super(key: key);

  @override
  State<GalleryTabScreen> createState() => _GalleryTabScreenState();
}

class _GalleryTabScreenState extends State<GalleryTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Text("Gallery Tab");
  }
}