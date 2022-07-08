// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:base_riverpod/core/infrastructure/share_pref_ultils.dart';
import 'package:base_riverpod/domain/entity/album_response.dart';
import 'package:base_riverpod/domain/entity/map_pin_response.dart';
import 'package:base_riverpod/domain/entity/media_response.dart';
import 'package:base_riverpod/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:base_riverpod/domain/repositories/profile_respository.dart';

class GalleryNotifier extends ChangeNotifier {
  final ProfileRepository repo;
  final SharePrefUtils userDefault;

  List<AlbumData> _albums = [];
  List<AlbumData> get albums => _albums;

  List<MediaData> _media = [];
  List<MediaData> get media => _media;

  GalleryNotifier({
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
    await _fetchData();
    EasyLoading.dismiss();
  }

  Future<void> _fetchData() async {
    Future.wait([
      _fetchMedia(),
      _fetchAlbums()
      ]);
  }

  Future<void> _fetchGuideInfo() async {
    final result = await repo.fetchGuideInfo();

    return result.fold((l) {}, (r) {
      userDefault.username = r.username;
      notifyListeners();
    });
  }

  Future<void> _fetchMedia() async {
    final result = await repo.fetchMedia(userDefault.username);
    result.fold((l) {}, (r) {
      _media = r;
      notifyListeners();
    });
  }

  Future<void> _fetchAlbums() async {
    final result = await repo.fetchAlbum(userDefault.username);
    result.fold((l) {}, (r) {
      _albums = r;
      notifyListeners();
    });
  }
}

final galleryNotifierProvider = ChangeNotifierProvider<GalleryNotifier>((ref) {
  final repo = ref.watch(profileRespository);
  return GalleryNotifier(repo: repo, userDefault: getIt<SharePrefUtils>());
});
