/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/arrow.png
  AssetGenImage get arrow => const AssetGenImage('assets/images/arrow.png');

  /// File path: assets/images/avatar-background.png
  AssetGenImage get avatarBackground =>
      const AssetGenImage('assets/images/avatar-background.png');

  /// File path: assets/images/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.png');

  /// File path: assets/images/award.png
  AssetGenImage get award => const AssetGenImage('assets/images/award.png');

  /// File path: assets/images/docs.png
  AssetGenImage get docs => const AssetGenImage('assets/images/docs.png');

  /// File path: assets/images/edit.png
  AssetGenImage get edit => const AssetGenImage('assets/images/edit.png');

  /// File path: assets/images/edit_profile.png
  AssetGenImage get editProfile =>
      const AssetGenImage('assets/images/edit_profile.png');

  /// File path: assets/images/faq.png
  AssetGenImage get faq => const AssetGenImage('assets/images/faq.png');

  /// File path: assets/images/file-text.png
  AssetGenImage get fileText =>
      const AssetGenImage('assets/images/file-text.png');

  /// File path: assets/images/file.png
  AssetGenImage get file => const AssetGenImage('assets/images/file.png');

  /// File path: assets/images/flag.png
  AssetGenImage get flag => const AssetGenImage('assets/images/flag.png');

  /// File path: assets/images/green-line-splash.png
  AssetGenImage get greenLineSplash =>
      const AssetGenImage('assets/images/green-line-splash.png');

  /// File path: assets/images/guide-navi.png
  AssetGenImage get guideNavi =>
      const AssetGenImage('assets/images/guide-navi.png');

  /// File path: assets/images/guidenavi_text.png
  AssetGenImage get guidenaviText =>
      const AssetGenImage('assets/images/guidenavi_text.png');

  /// File path: assets/images/home.png
  AssetGenImage get home => const AssetGenImage('assets/images/home.png');

  /// File path: assets/images/home_image_2.png
  AssetGenImage get homeImage2 =>
      const AssetGenImage('assets/images/home_image_2.png');

  /// File path: assets/images/icon-appbar.png
  AssetGenImage get iconAppbar =>
      const AssetGenImage('assets/images/icon-appbar.png');

  /// File path: assets/images/image.jpeg
  AssetGenImage get imageJpeg =>
      const AssetGenImage('assets/images/image.jpeg');

  /// File path: assets/images/image.png
  AssetGenImage get imagePng => const AssetGenImage('assets/images/image.png');

  /// File path: assets/images/mail.png
  AssetGenImage get mail => const AssetGenImage('assets/images/mail.png');

  /// File path: assets/images/map-pin.png
  AssetGenImage get mapPin => const AssetGenImage('assets/images/map-pin.png');

  /// File path: assets/images/mark_k.png
  AssetGenImage get markK => const AssetGenImage('assets/images/mark_k.png');

  /// File path: assets/images/next.png
  AssetGenImage get next => const AssetGenImage('assets/images/next.png');

  /// File path: assets/images/phone.png
  AssetGenImage get phone => const AssetGenImage('assets/images/phone.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/profile_avatar.png
  AssetGenImage get profileAvatar =>
      const AssetGenImage('assets/images/profile_avatar.png');

  /// File path: assets/images/profile_background.png
  AssetGenImage get profileBackground =>
      const AssetGenImage('assets/images/profile_background.png');

  /// File path: assets/images/red-line-splash.png
  AssetGenImage get redLineSplash =>
      const AssetGenImage('assets/images/red-line-splash.png');

  /// File path: assets/images/sos.png
  AssetGenImage get sos => const AssetGenImage('assets/images/sos.png');

  /// File path: assets/images/star.png
  AssetGenImage get star => const AssetGenImage('assets/images/star.png');

  /// File path: assets/images/tools.png
  AssetGenImage get tools => const AssetGenImage('assets/images/tools.png');

  /// File path: assets/images/two-lines-splash.png
  AssetGenImage get twoLinesSplash =>
      const AssetGenImage('assets/images/two-lines-splash.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}