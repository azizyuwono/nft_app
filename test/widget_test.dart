import 'package:flutter_test/flutter_test.dart';
import 'package:simple_nft/main.dart';
import 'package:simple_nft/pages/get_started.dart';
import 'package:simple_nft/pages/signin.dart';

void main() {
  testWidgets('GetStarted page loads and navigates to SignIn', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that we are on GetStarted page
    expect(find.byType(GetStarted), findsOneWidget);
    expect(find.text('Collect NFTs As\nYour Own Collection'), findsOneWidget);
    expect(find.text('Getting Started'), findsOneWidget);

    // Tap the 'Getting Started' button.
    await tester.tap(find.text('Getting Started'));
    await tester.pumpAndSettle(); // Wait for navigation animation

    // Verify that we are on SignIn page
    expect(find.byType(SignIn), findsOneWidget);
    expect(find.text('Start Collecting\nAmazing Artworks'), findsOneWidget);
  });
}
