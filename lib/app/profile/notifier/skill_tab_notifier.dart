// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:base_riverpod/app/profile/utils/auto_dispose_notifier.dart';
import 'package:base_riverpod/core/infrastructure/share_pref_ultils.dart';
import 'package:base_riverpod/domain/entity/skill_response.dart';
import 'package:base_riverpod/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:base_riverpod/domain/repositories/profile_respository.dart';

class SkillNotifier extends AutoDisposeChangeNotifier {
  final ProfileRepository repo;
  final SharePrefUtils userDefault;

  SkillData? _skill;
  SkillData? get skill => _skill;

  SkillData? _editableSkill;
  SkillData? get editableSkill => _editableSkill;

  String toeicScore = "";
  String travelGeography = "";

  bool _appliedChanged = false;

  SkillNotifier({
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
    await _fetchSkill();
    EasyLoading.dismiss();
  }

  Future<void> _fetchGuideInfo() async {
    final result = await repo.fetchGuideInfo();

    return result.fold((l) {}, (r) {
      userDefault.username = r.username;
      notifyListeners();
    });
  }

  Future<void> _fetchSkill() async {
    final result = await repo.fetchSkill(userDefault.username);
    result.fold((l) {}, (r) {
      toeicScore = r.toeic;
      travelGeography = r.travelGeography;
      _skill = r.copyWith(
          ortherDegrees: r.ortherDegrees
              .copyWith(ja: List.from(r.ortherDegrees.ja ?? [])));
      _editableSkill = r.copyWith(
          ortherDegrees: r.ortherDegrees
              .copyWith(ja: List.from(r.ortherDegrees.ja ?? [])));
      notifyListeners();
    });
  }

  void editOtherDegree(int index, String text) {
    _editableSkill?.ortherDegrees.ja?[index] = text;
    notifyListeners();
  }

  void removeOtherDegree(int index) {
    _editableSkill?.ortherDegrees.ja?.removeAt(index);
    notifyListeners();
  }

  void cloneNewDegree() {
    _editableSkill?.ortherDegrees.ja?.add("");
    notifyListeners();
  }

  void updateOnDismiss() async {
    if (_appliedChanged) {
      await _fetchSkill();
      _appliedChanged = false;
    } else {
      if (_skill != null) {
        _editableSkill =
            _skill!.copyWith(ortherDegrees: _skill!.ortherDegrees.copyWith());
      }
    }
  }

  Future<void> saveEditSkill() async {
    if (_editableSkill != null) {
      await repo.editSkill(_editableSkill!);
    }
    _appliedChanged = true;
    notifyListeners();
  }
}

final skillNotifierProvider =
    ChangeNotifierProvider.autoDispose<SkillNotifier>((ref) {
  final repo = ref.watch(profileRespository);
  return SkillNotifier(repo: repo, userDefault: getIt<SharePrefUtils>());
});
