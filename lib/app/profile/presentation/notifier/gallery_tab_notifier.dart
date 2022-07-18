// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:base_riverpod/core/infrastructure/share_pref_ultils.dart';
import 'package:base_riverpod/domain/entity/album_response.dart';
import 'package:base_riverpod/domain/entity/map_pin_response.dart';
import 'package:base_riverpod/domain/entity/media_response.dart';
import 'package:base_riverpod/injection.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:base_riverpod/domain/repositories/profile_respository.dart';

class GalleryNotifier extends ChangeNotifier {
  final ProfileRepository repo;
  final SharePrefUtils userDefault;

  Map<String, List<String>> _mediaByDate = {};
  Map<String, List<String>> get mediaByDate => _mediaByDate;

  Map<String, List<String>> _mediaByAlbums = {};
  Map<String, List<String>> get mediaByAlbums => _mediaByAlbums;

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
    Future.wait([_fetchMedia(), _fetchAlbums()]);
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
      _mapMediaByDate(r);
      notifyListeners();
    });
  }

  Future<void> _fetchAlbums() async {
    final result = await repo.fetchAlbum(userDefault.username);
    result.fold((l) {}, (r) {
      _mapMediaByAlbums(r);
      notifyListeners();
    });
  }

  void _mapMediaByDate(List<MediaData> data) {
    for (var element in data) {
      if (element.attachmentType == "image") {
        if (_mediaByAlbums[element.timeline] != null) {
          _mediaByDate[element.timeline]!.add(element.attachmentUrl);
        } else {
          _mediaByDate[element.timeline] = [element.attachmentUrl];
        }
      }
    }
  }

  void _mapMediaByAlbums(List<AlbumData> data) {
    for (var element in data) {
      if (element.mediumAttachmentType == "image") {
        if (_mediaByAlbums[element.name] != null) {
          _mediaByAlbums[element.name]!.add(element.mediumAttachmentUrl);
        } else {
          _mediaByAlbums[element.name] = [element.mediumAttachmentUrl];
        }
      }
    }
  }
}

final galleryNotifierProvider = ChangeNotifierProvider.autoDispose<GalleryNotifier>((ref) {
  final repo = ref.watch(profileRespository);
  return GalleryNotifier(repo: repo, userDefault: getIt<SharePrefUtils>());
});
