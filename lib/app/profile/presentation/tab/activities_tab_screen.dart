import 'package:auto_route/auto_route.dart';
import 'package:base_riverpod/app/profile/presentation/notifier/activities_tab_notifier.dart';
import 'package:base_riverpod/core/extension/imageX.dart';
import 'package:base_riverpod/core/extension/stringX.dart';
import 'package:base_riverpod/core/presentation/router/app_router.dart';
import 'package:base_riverpod/domain/entity/activities_response.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActivitiesTabScreen extends ConsumerWidget {
  const ActivitiesTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activities = ref.watch(activitiesNotifierProvider).activities;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text("最近の活動",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                  onTap: () async {
                    final result = await context.router.push(const EditActivitiesRoute());
                    if (result == true) {
                      ref.read(activitiesNotifierProvider.notifier).updateOnDismiss();
                    }
                  },
                  child: Assets.images.editProfile.image().iconify()),
            )
          ]),
        ),
        if (activities.isNotEmpty)
        for (var data in activities)
          if (data.isPublic)
            _buildActivitiesElement(ref, MediaQuery.of(context).size.width,
                data, activities.indexOf(data) != 0)
      ],
    );
  }

  Widget _buildActivitiesElement(
      WidgetRef ref, double screenWidth, ActivitiesData activitiesData,
      [bool showDivider = true]) {
    double imageWidth = screenWidth * 275 / 375;
    double imageHeight = imageWidth * 194 / 275;
    ref.read(activitiesNotifierProvider).activities;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showDivider)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Assets.images.crossDivider.image(),
            ),
          Text("${activitiesData.departureDate}".mapDate(),
              style: const TextStyle(fontSize: 14)),
          const SizedBox(height: 10),
          Text(activitiesData.title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(height: 20),
          if (activitiesData.media.length > 1) ...[
            SizedBox(
              width: imageWidth,
              height: imageHeight,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  for (var img in activitiesData.media)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: FadeInImage.assetNetwork(
                        placeholder: Assets.images.placeholderVjp.path,
                        image: img.url,
                        fit: BoxFit.fill,
                      ),
                    ),
                ],
              ),
            ),
          ] else if (activitiesData.media.length == 1) ...[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: FadeInImage.assetNetwork(
                placeholder: Assets.images.placeholderVjp.path,
                image: activitiesData.media.first.url,
                fit: BoxFit.fill,
              ),
            )
          ],
          const SizedBox(height: 20),
          Text(
            activitiesData.description,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
