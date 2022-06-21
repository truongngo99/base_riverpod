import 'package:base_riverpod/theme/theme.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lifecycle/lifecycle.dart';

import 'router/app_router.dart';

// final initializationProvider = FutureProvider<Unit>((ref) async {
//   // getIt<Dio>().interceptors.add(AuthInterceptor());
//   return unit;
// });

final appRouter = AppRouter();

class AppWidget extends ConsumerWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Base',
      debugShowCheckedModeBanner: false,
      routeInformationProvider: appRouter.routeInfoProvider(),
      routerDelegate: appRouter.delegate(
        navigatorObservers: () => [defaultLifecycleObserver],
      ),
      routeInformationParser: appRouter.defaultRouteParser(),
      themeMode: ThemeMode.light,
    );
  }
}
