import 'package:base_riverpod/dev_helper/shared/dev_helper_providers.dart';
import 'package:base_riverpod/theme/theme.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lifecycle/lifecycle.dart';

import 'router/app_router.dart';

// final initializationProvider = FutureProvider<Unit>((ref) async {
//   // getIt<Dio>().interceptors.add(AuthInterceptor());
//   return unit;
// });

final appRouter = AppRouter();

final initialiaztionProvider = Provider<bool>((ref) {
  ref.watch(devHelperStateProvider.notifier).getSettings();
  return true;
});

class MyApp extends ConsumerStatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  
  @override
  void initState() {
    super.initState();
    _initialLoadingIndicatior();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(initialiaztionProvider, (previous, next) {});
    return MaterialApp
    .router(
      builder: EasyLoading.init(),
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

    _initialLoadingIndicatior() {
    EasyLoading.instance
      ..displayDuration = const Duration(seconds: 15)
      ..userInteractions = false;
  }
}

