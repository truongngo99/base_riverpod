import 'package:auto_route/auto_route.dart';
import 'package:base_riverpod/ui/presentation/home_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(
      path: '/',
      page: HomePage,
      initial: true,
    ),

    //MaterialRoute(page: TestApiPage, initial: true),
  ],
  replaceInRouteName: 'Page|Screen,Route',
)
class AppRouter extends _$AppRouter {}
