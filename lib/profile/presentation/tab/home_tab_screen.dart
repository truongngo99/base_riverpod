import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/profile/utils/container_rounded_text.dart';
import 'package:flutter/material.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  final Map<String, String> _skillList = {
    "ドイツ語": "日常会話レベル",
    "中国語": "ビジネスレベル",
    "英語": "ネイティブレベル",
  };

  final String selfDes = "私は東京でフリーのツアープランニングをしています。沖縄出身のうちなーんちゅなので、ガイドブックに載っていない情報やお店の事をお伝えできます！お客様のご要望に合わせてプランを組み立てるので、一緒に特別な思い出を作りましょう！！";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _buildBioWidget(selfDes),
        const SizedBox(height: 30),
        _buildSkillWidget(_skillList),
      ]),
    );
  }

  Widget _buildBioWidget(String selfDescription) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            "沖縄ネイチャーガイド",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Assets.images.editProfile.image(width: 24, height: 24),
          ),
        ],
      ),
      const SizedBox(height: 20),
      const Text("一緒に特別な思い出を作りましょう！！",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
      const SizedBox(height: 10),
      Text(
          selfDescription,
          style: const TextStyle(fontSize: 14)),
      const SizedBox(height: 20),
      Assets.images.homeImage2.image(),
    ]);
  }

  Widget _buildSkillWidget(Map<String, String> skillList) {
    return Column(
      children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 12),
            Assets.images.file.image(width: 20, height: 20),
            const SizedBox(width: 12),
            const Text("沖縄本島ガイド会", style: TextStyle(fontSize: 14)),
          ],
        ),
        const SizedBox(height: 20),
        ...skillList.entries.map((e) {
          return _buildSkillElement(e.key, e.value);
        }),
      ],
    );
  }

  Widget _buildSkillElement(String skill, String level) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          RoundedTextContainer(containerWidth: 80, text: skill),
          const SizedBox(width: 18),
          Text(level, style: const TextStyle(fontSize: 14))
        ],
      ),
    );
  }
}
