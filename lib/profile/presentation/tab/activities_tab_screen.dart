import 'package:base_riverpod/core/extension/imageX.dart';
import 'package:base_riverpod/core/extension/stringX.dart';
import 'package:base_riverpod/domain/entity/activities_response.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/profile/presentation/notifier/activities_tab_notifier.dart';
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
              child: Assets.images.editProfile.image().iconify(),
            )
          ]),
        ),

        for (var data in activities)
        _buildActivitiesElement(MediaQuery.of(context).size.width, data, activities.indexOf(data) != 0)
      ],
    );
  }

  Widget _buildActivitiesElement(double screenWidth,ActivitiesData activitiesData, [bool showDivider = true]) {
    double imageWidth = screenWidth * 275/375;
    double imageHeight = imageWidth * 194/275;
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
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
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
          ),]
          else ...[
          ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FadeInImage.assetNetwork(
                    placeholder: Assets.images.placeholderVjp.path,
                    image: activitiesData.media.first.url,
                    fit: BoxFit.fill,
                  ),
                )],
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
