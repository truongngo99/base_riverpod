import 'package:auto_route/auto_route.dart';
import 'package:base_riverpod/app/auth/presentation/login_page.dart';
import 'package:base_riverpod/app/menu/menu_screen.dart';
import 'package:base_riverpod/app/profile/presentation/edit/edit_activities_screen.dart';
import 'package:base_riverpod/app/profile/presentation/edit/edit_home_screen.dart';
import 'package:base_riverpod/app/profile/presentation/edit/edit_skill_screen.dart';
import 'package:base_riverpod/app/profile/presentation/profile_screen.dart';
import 'package:base_riverpod/app/splash/splash_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(path: '/', page: SplashScreen, initial: true),
    CustomRoute(page: LoginPage, path: '/login'),
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
        durationInMilliseconds: 100),
    CustomRoute(
        page: EditActivitiesScreen,
        path: '/activities/edit',
        transitionsBuilder: TransitionsBuilders.slideLeft,
        durationInMilliseconds: 100),
    CustomRoute(
        page: EditHomeScreen,
        path: '/home/edit',
        transitionsBuilder: TransitionsBuilders.slideLeft,
        durationInMilliseconds: 100),
  ],
  replaceInRouteName: 'Page|Screen,Route',
)
class AppRouter extends _$AppRouter {}
