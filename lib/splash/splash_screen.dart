import 'package:auto_route/auto_route.dart';
import 'package:base_riverpod/core/presentation/router/app_router.dart';
import 'package:base_riverpod/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 3;
    Future.delayed(const Duration(seconds: 2), () {
      context.router.replace(LoginRoute());
    });
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: 
     Stack(
      fit: StackFit.expand,
      children: [
        Transform.translate(
          offset: const Offset(60, 30),
          child: Transform.scale(
            scaleX: 1000/375 * (screenWidth/375),
            scaleY: 1500/667 * (screenHeight/667),
            child: SizedBox(
              child: Assets.images.twoLinesSplash.image()),
          ),
        ),
       Hero(
        tag: 'guide-navi',
        child: Assets.images.guideNavi.image(),
      ),
     ],)
    );
  }
}
