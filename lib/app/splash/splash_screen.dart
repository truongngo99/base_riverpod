import 'package:auto_route/auto_route.dart';
import 'package:base_riverpod/app/auth/application/auth_notifier.dart';
import 'package:base_riverpod/app/auth/shared/auth_provider.dart';
import 'package:base_riverpod/core/infrastructure/share_pref_ultils.dart';
import 'package:base_riverpod/core/presentation/router/app_router.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:base_riverpod/infrastructure/authenticator.dart';
import 'package:base_riverpod/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SplashScreen extends ConsumerStatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _fadedAnimationController;
  late Animation<double> _fadedAnimation;
  late AnimationController _animationController;
  late Animation<double> _animation;

  bool _isLoadedWebView = true;

  @override
  void initState() {
    _fadedAnimationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    final fadedCurve = CurvedAnimation(
      parent: _fadedAnimationController,
      curve: Curves.linear,
    );
    _fadedAnimation = Tween<double>(begin: 0, end: 1).animate(fadedCurve)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.forward();
        }
      });

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    final curve = CurvedAnimation(
      parent: _animationController,
      curve: Curves.linear,
    );
    _animation = Tween<double>(begin: 8 / 3, end: -5 / 3).animate(curve)
      ..addListener(() {
        setState(() {});
        if (_isLoadedWebView) {
          return;
        }
        if (_animation.value <= 2.75 / 3) {
          _animationController.stop();
        }
      })
      ..addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          final isSigned = ref.watch(authNotifierProvider.notifier).state == AuthState.unauthenticated();
          final isSignedIn = getIt<SharePrefUtils>().isSignedIn;
          print("${isSignedIn}");
          context.router.replace(isSignedIn ? const ProfileRoute() : const LoginRoute());
        }
      });
       
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _fadedAnimationController.forward();
    })
    ;
  }

  @override
  void dispose() {
    _fadedAnimationController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final originalGradientWidth = screenWidth;
    final originalGradientHeight = screenWidth / sqrt2 / (7 / 3);

    final animationValue = originalGradientWidth * _animation.value / sqrt2;
    final animationValue2 =
        originalGradientWidth * (_animation.value - 2.75 / 3) / sqrt2;

    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Transform.translate(
              offset: Offset(-animationValue, animationValue),
              // offset: const Offset(0, 0),
              child: Transform.translate(
                // offset: Offset(0, -gradientHeight / 2),
                offset: Offset(0, -originalGradientHeight * 4 / 3),
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(-45 / 360),
                  // turns: const AlwaysStoppedAnimation(0 / 360),
                  child: ScaleTransition(
                    scale: const AlwaysStoppedAnimation(7.0 / 3.0),
                    // scale: const AlwaysStoppedAnimation(1),
                    child: Transform.translate(
                      offset: Offset(0, originalGradientHeight / 4),
                      // offset: Offset(0, 0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0x00E74E00),
                              Color(0xFFE74E00),
                              Color(0x00E74E00),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        width: originalGradientWidth,
                        height: originalGradientHeight,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Transform.translate(
              offset: Offset(-animationValue2, animationValue2),
              // offset: const Offset(0, 0),
              // offset: Offset(-originalGradientWidth * 4/3 / sqrt2, originalGradientWidth * 4/3 / sqrt2),
              child: Transform.translate(
                // offset: Offset(0, -gradientHeight / 2),
                offset: Offset(0, originalGradientHeight * 4 / 3),
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(-45 / 360),
                  // turns: const AlwaysStoppedAnimation(0 / 360),
                  child: ScaleTransition(
                    scale: const AlwaysStoppedAnimation(7.0 / 3.0),
                    // scale: const AlwaysStoppedAnimation(1),
                    child: Transform.translate(
                      offset: Offset(0, -originalGradientHeight / 4),
                      // offset: Offset(0, 0),
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0x00009F9B),
                              Color(0xFF009F9B),
                              Color(0x00009F9B),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        width: originalGradientWidth,
                        height: originalGradientHeight,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Hero(
              tag: 'logo_hero_tag',
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 200),
                child: SizedBox(
                  width: screenWidth * 0.45,
                  child: AspectRatio(
                    aspectRatio: 7 / 2,
                    child: FadeTransition(
                      opacity: _fadedAnimation,
                      child: Assets.images.guideNavi.image(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
