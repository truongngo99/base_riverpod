// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../utils/custom_clip_path.dart';

class ProfileTabBuilder extends StatelessWidget {
  const ProfileTabBuilder({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorName.profileBackground,
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                _buildTopViewWidget(),
                body,
                _buildBottomViewWidget(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopViewWidget() {
    return ClipPath(
      clipper: CustomClipPath(),
      child: Container(
        // ignore: sort_child_properties_last
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 34),
                        child: Assets.images.profileBackground.image(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Assets.images.profileAvatar
                              .image(width: 90, height: 90),
                          Row(
                            children: [
                              Assets.images.btnSetting
                                  .image(width: 16, height: 16),
                              const SizedBox(width: 4),
                              const Text("プロフィール編集"),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              "旅行 花子",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const Text(
                              "Ryoko Hanako",
                              style: TextStyle(fontSize: 14),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "沖縄ネイチャーガイド",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ]),
                      const Spacer(),
                      Card(
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Assets.images.phone.image(width: 24, height: 24),
                        ),
                      ),
                      Card(
                        elevation: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Assets.images.mail.image(width: 24, height: 24),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
        color: ColorName.profileBackground,
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
