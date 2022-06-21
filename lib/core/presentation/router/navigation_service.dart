import 'package:base_riverpod/core/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = appRouter.navigatorKey;

  Future<T?> openDialog<T>({required Widget dialog}) {
    return showDialog<T>(
      context: navigatorKey.currentContext!,
      builder: (_) => dialog,
      // builder: (_) => const AlertDialog(
      //   title: Text("Dialog"),
      //   content: Text("Sample Dialog"),
      // ),
    );
  }
}
