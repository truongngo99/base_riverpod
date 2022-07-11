// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:auto_route/auto_route.dart';
import 'package:base_riverpod/core/extension/imageX.dart';
import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:base_riverpod/profile/presentation/notifier/home_tab_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../gen/assets.gen.dart';
import '../utils/custom_clip_path.dart';

class EditScreenBuilder extends ConsumerWidget {
  const EditScreenBuilder({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        color: ColorName.profileBackground,
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                _buildTopViewWidget(context, ref),
                body,
                _buildBottomViewWidget(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopViewWidget(BuildContext context, WidgetRef ref) {
    return  SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Assets.images.iconAppbar.image().iconify(36),
                  const Icon(Icons.menu, color: Colors.black),
                ]),
                const Divider(
                  height: 5
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.router.removeLast();
                      },
                      child: Assets.images.arrowBackIos.image().iconify(48)
                      )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildBottomViewWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 60),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Assets.images.guidenaviText.image(width: 120, height: 40),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
              "ホーム\n\nナビテキストA\n\nナビテキストテキストテキストB\n\nナビテキストテキストC\n\nナビテキストD\n\nナビテキストテキストE",
              style: TextStyle(
                fontSize: 14,
              )),
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            ClipPath(
              clipper: CustomClipPath()..type = ClipPathType.top,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: ColorName.profileBackground,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 48, 20, 0),
              child: Text("© GuideNavi. All Rights Reserved."),
            )
          ],
        ),
      ],
    );
  }
}
