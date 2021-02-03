import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fondle/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(Fondle());

    // Verify that our counter starts at 0.
    expect(find.text('FONDLE'), findsOneWidget);
    expect(find.text('Sign in'), findsOneWidget);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byWidget(Container()));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('Adoption'), findsOneWidget);
  });
}
