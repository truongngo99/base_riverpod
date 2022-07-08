// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:base_riverpod/core/infrastructure/share_pref_ultils.dart';
import 'package:base_riverpod/domain/entity/general_info_response.dart';
import 'package:base_riverpod/domain/entity/skill_response.dart';
import 'package:base_riverpod/domain/entity/top_profile_response.dart';
import 'package:base_riverpod/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:base_riverpod/domain/repositories/profile_respository.dart';

class ProfileNotifier extends ChangeNotifier {
  final ProfileRepository repo;
  final SharePrefUtils userDefault;

  TopProfileData? _topProfile;
  TopProfileData? get topProfile => _topProfile;

  GeneralInfoData? _generalInfo;
  GeneralInfoData? get generalInfo => _generalInfo;

  SkillData? _skill;
  SkillData? get skill => _skill;

  ProfileNotifier({
    required this.repo,
    required this.userDefault,
  }):super(){
    initFetch();
    notifyListeners();
  }
  

  void initFetch() async {
    EasyLoading.show();
    await _fetchGuideInfo();
    await _fetchData();
    EasyLoading.dismiss();
    notifyListeners();
  }

  Future<void> _fetchData() async {
    Future.wait([
      _fetchTopProfile(),
      _fetchUserInfo(),
      _fetchGeneralInfo(),
      _fetchGuideUserInfo(),
      _fetchSkill()
      ]);
  }

  Future<void> _fetchTopProfile() async {
    final result = await repo.fetchTopProfile();
    result.fold((l) {
    }, (r) {
      _topProfile = r;
      notifyListeners();
    });
  }

  Future<void> _fetchGuideInfo() async {
    final result = await repo.fetchGuideInfo();
    
    return result.fold((l) {
    }, (r) { 
      userDefault.username = r.username;
      notifyListeners();
    });
  }

  Future<void> _fetchUserInfo() async {
    final result = await repo.fetchUserInfo();
    result.fold((l) {}, (r) {
    });
  }

    Future<void> _fetchGeneralInfo() async {
    final result = await repo.fetchGeneralInfo(userDefault.username);
    result.fold((l) {}, (r) {
      _generalInfo = r;
      notifyListeners();
    });
  }

    Future<void> _fetchGuideUserInfo() async {
    final result = await repo.fetchGuideUserInfo(userDefault.username);
    result.fold((l) {}, (r) {
    });
  }

    Future<void> _fetchSkill() async {
    final result = await repo.fetchSkill(userDefault.username);
    result.fold((l) {}, (r) {
      _skill = r;
    });
  }
}

final profileNotifierProvider = ChangeNotifierProvider<ProfileNotifier>((ref) {
  final repo = ref.watch(profileRespository);
  return ProfileNotifier(repo: repo, userDefault: getIt<SharePrefUtils>());
});
