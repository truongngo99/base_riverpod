// class MockAuthRepo extends preMock.Mock implements AuthNotifier {}

import 'package:base_riverpod/auth/presentation/login_page.dart';
import 'package:base_riverpod/core/presentation/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:integration_test/integration_test.dart';

Future<void> addDelay(int ms) async {
  await Future<void>.delayed(Duration(milliseconds: ms));
}

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  if (binding is LiveTestWidgetsFlutterBinding) {
    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;
  }

  testWidgets("Demo Integration test", (tester) async {
    await tester.pumpWidget(const ProviderScope(child: AppWidget()));
    await tester.pumpAndSettle();
    await tester.enterText(
        find.byKey(
          const Key("tap1"),
        ),
        "truong");
    await addDelay(1000);
    await tester.pumpAndSettle();
    await tester.enterText(
        find.byKey(
          const Key("tap2"),
        ),
        '1234');

    addDelay(2000);
    await tester.tap(find.byKey(const Key("login")));
    await tester.pumpAndSettle();
    // await tester.enterText(find.text(hintTextPassword), '1222');

    // await tester.tap(find.byType(IconButton));
  });
}
