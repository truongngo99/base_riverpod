import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:base_riverpod/profile/presentation/notifier/home_tab_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SkillTabScreen extends ConsumerWidget {
  SkillTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _buildAwardWidget(ref);
  }

  Widget _buildAwardWidget(WidgetRef ref) {
    final skill = ref.watch(profileNotifierProvider).skill;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "沖縄ネイチャーガイド",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                GestureDetector(
                    onTap: () {},
                    child:
                        Assets.images.editProfile.image(width: 24, height: 24)),
              ],
            ),
          ),
          if (skill?.domesticBusinessManager == "yes")
            _buildAwardElement("旅行業務取扱管理者（国内）"),
            if (skill?.generalBusinessManager == "yes")
            _buildAwardElement("旅行業務取扱管理者（総合）"),
          if (skill?.toeic != null)
            _buildAwardElement("TOEIC", "${skill!.toeic}点"),
          if (skill?.travelGeography != null)
            _buildAwardElement("旅行地理検定", "${skill?.travelGeography}"),
          for (var degree in skill?.ortherDegrees.ja ?? [])
            _buildAwardElement(degree)
        ],
      ),
    );
  }

  Widget _buildAwardElement(String name, [String? description]) {
    return Card(
      shape: RoundedRectangleBorder(
          side: const BorderSide(
              color: ColorName.appbarBackgroundColor, width: 1.0),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Assets.images.yellowAward.image(width: 24, height: 24),
                const SizedBox(width: 10),
                Text(
                  name,
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
            if (description != null)
              Text(
                description,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
          ],
        ),
      ),
    );
  }
}
