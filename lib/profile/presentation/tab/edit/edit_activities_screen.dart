import 'package:auto_route/auto_route.dart';
import 'package:base_riverpod/core/extension/stringX.dart';
import 'package:base_riverpod/domain/entity/activities_response.dart';
import 'package:base_riverpod/gen/colors.gen.dart';
import 'package:base_riverpod/profile/presentation/edit_tab_builder.dart';
import 'package:base_riverpod/profile/presentation/notifier/activities_tab_notifier.dart';
import 'package:base_riverpod/profile/presentation/tab/edit/tabbar_editable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditActivitiesScreen extends ConsumerWidget {
  const EditActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final activitiesData = ref.watch(activitiesNotifierProvider).activities;
    return EditScreenBuilder(
      body: _buildBody(
          context, ref, ref.watch(activitiesNotifierProvider).editableActivities),
      topTitle: '最近の活動',
    );
  }

  Widget _buildBody(BuildContext context, WidgetRef ref,
      List<ActivitiesData> activitiesData) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Divider(color: Colors.grey[600], height: 5),
          // const SizedBox(height: 10),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              itemCount: activitiesData.length,
              itemBuilder: (context, index) {
                return _buildEditableActivities(
                    ref, activitiesData[index], index);
              }),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 44,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    ColorName.orangePrimaryMaterial),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              child: const Text('保存'),
              onPressed: () async {
                await ref
                    .read(activitiesNotifierProvider.notifier)
                    .saveEditActivities();
                context.router.pop(true);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEditableActivities(
      WidgetRef ref, ActivitiesData data, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${data.departureDate}".mapDate(),
            style: const TextStyle(fontSize: 14)),
        const SizedBox(height: 10),
        Text(data.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        const SizedBox(height: 20),
        EditableTabBar(
            elements: const ["非表示", "表示"],
            initIndex: data.isPublic ? 0 : 1,
            callback: (tabIndex) {
              ref
                  .read(activitiesNotifierProvider.notifier)
                  .changeStateActivites(tabIndex == 0, index);
            }),
        const SizedBox(height: 20),
        Divider(color: Colors.grey[600], height: 5),
        const SizedBox(height: 20),
      ],
    );
  }
}
