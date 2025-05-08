import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:chat_ui_package/chat_ui_package.dart';

void main() {
  testWidgets('ChatUI builds correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ChatUI(
          username: 'Test User',
          role: 'Tester',
          message: 'Testing message',
          imagepath: 'assets/images/profile.jpg',
        ),
      ),
    );

    expect(find.text('Test User'), findsOneWidget);
    expect(find.text('Tester'), findsOneWidget);
    expect(find.text('Testing message'), findsOneWidget);
  });
}
