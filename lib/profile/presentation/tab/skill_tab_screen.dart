import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:base_riverpod/profile/presentation/notifier/home_tab_notifier.dart';
import 'package:base_riverpod/profile/presentation/notifier/skill_tab_notifier.dart';
import 'package:base_riverpod/profile/presentation/tab/edit/edit_skill_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:base_riverpod/core/presentation/router/app_router.dart';
import 'package:auto_route/auto_route.dart';

class SkillTabScreen extends ConsumerWidget {
  SkillTabScreen({Key? key}) : super(key: key);

  Map<String, String> degreeMapping = {
    "beginner": "初心者",
    "elementary": "小学校",
    "advanced": "高度",
    "imediately": "中級",
    "expert": "エキスパート",
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _buildAwardWidget(context, ref);
  }

  Widget _buildAwardWidget(BuildContext context, WidgetRef ref) {
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
                    onTap: () async {
                      final result =
                          await context.router.push(EditSkillRoute());
                      if (result == true) {
                        ref
                            .read(skillNotifierProvider.notifier)
                            .initFetch();
                      }
                    },
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
            _buildAwardElement(
                "旅行地理検定", "${degreeMapping[skill?.travelGeography]}"),
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
