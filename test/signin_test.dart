import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_nft/pages/signin.dart';
import 'package:simple_nft/pages/discover.dart';
import 'package:simple_nft/theme.dart';

void main() {
  testWidgets('SignIn page interactions', (WidgetTester tester) async {
    // We need to wrap SignIn in MaterialApp because it uses Navigator and Theme
    await tester.pumpWidget(MaterialApp(
      theme: appTheme(),
      home: const SignIn(),
    ));

    // Verify fields exist
    expect(find.text('Full Name'), findsOneWidget);
    expect(find.text('Email Address'), findsOneWidget);
    // Password appears twice: label and hint
    expect(find.text('Password'), findsNWidgets(2));

    // Enter text
    // We have 3 TextFormFields.
    // Note: Finding by type might return them in order of layout.
    await tester.enterText(find.byType(TextFormField).at(0), 'John Doe');
    await tester.enterText(find.byType(TextFormField).at(1), 'john@example.com');
    await tester.enterText(find.byType(TextFormField).at(2), 'password123');

    // Tap button
    await tester.tap(find.text('Getting Started'));
    await tester.pumpAndSettle();

    // Verify navigation to Discover
    expect(find.byType(Discover), findsOneWidget);
    expect(find.text('Popular Bids'), findsOneWidget);
  });
}
