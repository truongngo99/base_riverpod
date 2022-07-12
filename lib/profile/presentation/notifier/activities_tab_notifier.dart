// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:base_riverpod/core/infrastructure/share_pref_ultils.dart';
import 'package:base_riverpod/domain/entity/activities_response.dart';
import 'package:base_riverpod/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:base_riverpod/domain/repositories/profile_respository.dart';

class ActivitiesNotifier extends ChangeNotifier {
  final ProfileRepository repo;
  final SharePrefUtils userDefault;

  List<ActivitiesData> _activities = [];
  List<ActivitiesData> get activities => _activities;

  ActivitiesNotifier({
    required this.repo,
    required this.userDefault,
  }) : super() {
    initFetch();
    notifyListeners();
  }

  void initFetch() async {
    EasyLoading.show();
    if (userDefault.username == "guide_navi") {
      await _fetchGuideInfo();
    }
    await _fetchActivities();
    EasyLoading.dismiss();
  }

  Future<void> _fetchGuideInfo() async {
    final result = await repo.fetchGuideInfo();

    return result.fold((l) {}, (r) {
      userDefault.username = r.username;
      notifyListeners();
    });
  }

  Future<void> _fetchActivities() async {
    final result = await repo.fetchActivities(userDefault.username);
    result.fold((l) {}, (r) {
      _activities = r;
      notifyListeners();
    });
  }
}

final activitiesNotifierProvider = ChangeNotifierProvider<ActivitiesNotifier>((ref) {
  final repo = ref.watch(profileRespository);
  return ActivitiesNotifier(repo: repo, userDefault: getIt<SharePrefUtils>());
});
