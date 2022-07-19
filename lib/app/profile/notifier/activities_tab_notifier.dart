// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:base_riverpod/app/profile/utils/auto_dispose_notifier.dart';
import 'package:base_riverpod/core/infrastructure/share_pref_ultils.dart';
import 'package:base_riverpod/domain/entity/activities_response.dart';
import 'package:base_riverpod/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:base_riverpod/domain/repositories/profile_respository.dart';

class ActivitiesNotifier extends AutoDisposeChangeNotifier {
  final ProfileRepository repo;
  final SharePrefUtils userDefault;

  List<ActivitiesData> _activities = [];
  List<ActivitiesData> get activities => _activities;

  List<ActivitiesData> _editableActivities = [];
  List<ActivitiesData> get editableActivities => _editableActivities;

  Map<int, bool> _initList = {};
  Map<int, bool> _editedList = {};

  bool _appliedChanged = false;

  ActivitiesNotifier({
    required this.repo,
    required this.userDefault,
  }) : super() {
    initFetch();
    notifyListeners();
  }

  @override
  void dispose() {
    print("active sap bi dispo");
    super.dispose();
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
      _activities = [...r];
      _editableActivities = [...r];
      print("$r");
      for (var data in r) {
        _initList[data.id] = data.isPublic;
      }
      notifyListeners();
    });
  }

  void changeStateActivites(bool isPublic, int index) {
    if (isPublic != _initList[_editableActivities[index].id]) {
          _editedList[_editableActivities[index].id] = isPublic;
    } else {
      _editedList.removeWhere((key, value) => key == _editableActivities[index].id);
    }
    _editableActivities[index] = _editableActivities[index].copyWith(isPublic: isPublic);
    notifyListeners();
  }

  Future<void> saveEditActivities() async {
    _editedList.entries.map((e) async {
      await repo.editActivities(e.key, e.value);
    });
    _appliedChanged = true;
    notifyListeners();
  }

  void updateOnDismiss() {
    if (_appliedChanged) {
      _activities = [..._editableActivities];
    } else {
      _editableActivities = [..._activities];
    }
    _appliedChanged = false;
    notifyListeners();
  }
}

final activitiesNotifierProvider = ChangeNotifierProvider.autoDispose<ActivitiesNotifier>((ref) {
  final repo = ref.watch(profileRespository);
  return ActivitiesNotifier(repo: repo, userDefault: getIt<SharePrefUtils>());
});
