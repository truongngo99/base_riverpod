import 'package:base_riverpod/profile/utils/container_rounded_text.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import '../utils/custom_clip_path.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
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
                ClipPath(
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
                                    child:
                                        Assets.images.profileBackground.image(),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        const Text(
                                          "旅行 花子",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        const Text(
                                          "Ryoko Hanako",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        const SizedBox(height: 10),
                                        const Text(
                                          "沖縄ネイチャーガイド",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ]),
                                  const Spacer(),
                                  Card(
                                    elevation: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Assets.images.phone
                                          .image(width: 24, height: 24),
                                    ),
                                  ),
                                  Card(
                                    elevation: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Assets.images.mail
                                          .image(width: 24, height: 24),
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
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              "沖縄ネイチャーガイド",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Assets.images.editProfile
                                  .image(width: 24, height: 24),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text("一緒に特別な思い出を作りましょう！！",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14)),
                        const SizedBox(height: 10),
                        const Text(
                            "私は東京でフリーのツアープランニングをしています。沖縄出身のうちなーんちゅなので、ガイドブックに載っていない情報やお店の事をお伝えできます！お客様のご要望に合わせてプランを組み立てるので、一緒に特別な思い出を作りましょう！！",
                            style: TextStyle(fontSize: 14)),
                        const SizedBox(height: 20),
                        Assets.images.homeImage2.image(),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 12),
                            Assets.images.file.image(width: 20, height: 20),
                            const SizedBox(width: 12),
                            const Text("沖縄本島ガイド会",
                                style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            RoundedTextContainer(
                                containerWidth: 80, text: "ドイツ語"),
                            SizedBox(width: 18),
                            Text("日常会話レベル", style: TextStyle(fontSize: 14))
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: const [
                            RoundedTextContainer(
                                containerWidth: 80, text: "中国語"),
                            SizedBox(width: 18),
                            Text("ビジネスレベル", style: TextStyle(fontSize: 14))
                          ],
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: const [
                            RoundedTextContainer(
                                containerWidth: 80, text: "英語"),
                            SizedBox(width: 18),
                            Text("ネイティブレベル", style: TextStyle(fontSize: 14))
                          ],
                        ),
                        const SizedBox(height: 60),
                        Assets.images.guidenaviText
                            .image(width: 120, height: 40),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                              "ホーム\n\nナビテキストA\n\nナビテキストテキストテキストB\n\nナビテキストテキストC\n\nナビテキストD\n\nナビテキストテキストE",
                              style: TextStyle(
                                fontSize: 14,
                              )),
                        ),
                      ]),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
