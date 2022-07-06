// ignore_for_file: public_member_api_docs, sort_constructors_first



import 'package:base_riverpod/core/infrastructure/share_pref_ultils.dart';
import 'package:base_riverpod/injection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:base_riverpod/data/respositories/profile_respository_impl.dart';
import 'package:base_riverpod/domain/repositories/profile_respository.dart';

class HomeTabNotifier extends ChangeNotifier {
  final ProfileRepository repo;
  final SharePrefUtils userDefault;

  HomeTabNotifier({
    required this.repo,
    required this.userDefault,
  });

  void fetchGeneralInfo() async {
    final result = await repo.fetchGeneralInfo(userDefault.keyUsername);
    result.fold((l) {
      print("error $l");
    }, (r) {
        print("data nek : ${r.data}");
    });
  }
}

final homeTabNotifierProvider = ChangeNotifierProvider<HomeTabNotifier>((ref) {
  final repo = ref.watch(profileRespository);
  return HomeTabNotifier(repo: repo, userDefault: getIt<SharePrefUtils>());
  });
