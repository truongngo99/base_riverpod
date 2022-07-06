import 'package:base_riverpod/core/infrastructure/share_pref_ultils.dart';
import 'package:base_riverpod/core/presentation/app_widget.dart';
import 'package:base_riverpod/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.test);
  getIt<SharePrefUtils>().init();    

  runApp(ProviderScope(
    child: MyApp(),
  ));
}
