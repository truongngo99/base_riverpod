// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:base_riverpod/core/infrastructure/share_pref_ultils.dart';
import 'package:base_riverpod/domain/entity/map_pin_response.dart';
import 'package:base_riverpod/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:base_riverpod/domain/repositories/profile_respository.dart';

class TravelSpotNotifier extends ChangeNotifier {
  final ProfileRepository repo;
  final SharePrefUtils userDefault;

  List<TravelSpotData> _mappin = [];
  List<TravelSpotData> get mappin => _mappin;

  TravelSpotNotifier({
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
    await _fetchMapPin();
    EasyLoading.dismiss();
  }

  // Future<void> _fetchData() async {
  //   Future.wait([_fetchMapPin()]);
  // }

  Future<void> _fetchGuideInfo() async {
    final result = await repo.fetchGuideInfo();

    return result.fold((l) {}, (r) {
      userDefault.username = r.username;
      notifyListeners();
    });
  }

  Future<void> _fetchMapPin() async {
    final result = await repo.fetchMapPin(userDefault.username);
    result.fold((l) {}, (r) {
      _mappin = r;
      notifyListeners();
    });
  }
}

final travelSpotNotifierProvider = ChangeNotifierProvider<TravelSpotNotifier>((ref) {
  final repo = ref.watch(profileRespository);
  return TravelSpotNotifier(repo: repo, userDefault: getIt<SharePrefUtils>());
});
