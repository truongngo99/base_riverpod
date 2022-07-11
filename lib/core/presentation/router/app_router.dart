import 'package:auto_route/auto_route.dart';
import 'package:base_riverpod/auth/presentation/login_page.dart';
import 'package:base_riverpod/home/presentation/home_screen.dart';
import 'package:base_riverpod/menu/presentation/menu_screen.dart';
import 'package:base_riverpod/profile/presentation/profile_screen.dart';
import 'package:base_riverpod/profile/presentation/tab/edit/edit_skill_screen.dart';
import 'package:base_riverpod/splash/splash_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(path: '/', page: SplashScreen, initial: true),
    CustomRoute(page: LoginPage, path: '/login'),
    CustomRoute(
        path: '/home',
        page: HomeScreen,
        transitionsBuilder: TransitionsBuilders.noTransition,
        durationInMilliseconds: 200),
    AutoRoute(path: '/menu', page: MenuScreen),
    CustomRoute(
        page: ProfileScreen,
        path: '/profile',
        transitionsBuilder: TransitionsBuilders.noTransition,
        durationInMilliseconds: 200),
    CustomRoute(
        page: EditSkillScreen,
        path: '/skill/edit',
        transitionsBuilder: TransitionsBuilders.slideLeft,
        durationInMilliseconds: 200),
    // CustomRoute(
    //   path: '/profile',
    //   page: ProfileScreen,
    //   transitionsBuilder: TransitionsBuilders.noTransition,
    //   durationInMilliseconds: 200),
    //MaterialRoute(page: TestApiPage, initial: true),
  ],
  replaceInRouteName: 'Page|Screen,Route',
)
class AppRouter extends _$AppRouter {}
