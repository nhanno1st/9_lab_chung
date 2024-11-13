import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dicee_flutter_app/main.dart'; // Đảm bảo đường dẫn đúng

void main() {
  testWidgets('DicePage functionality test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: DicePage()));

    // Verify that the initial dice numbers are shown (e.g., 1).
    expect(find.byType(Image), findsNWidgets(2)); // 2 dice images

    // Simulate a tap on the left dice and trigger a frame.
    await tester.tap(find.byType(TextButton).first); // First dice (left)
    await tester.pump();

    // Simulate a tap on the right dice and trigger a frame.
    await tester.tap(find.byType(TextButton).last); // Second dice (right)
    await tester.pump();

    // Since dice results are random, further test cases can verify if state changes.
    // For example, check if the images change after tapping.
  });
}
