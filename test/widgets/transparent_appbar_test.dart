import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:underclocking/widgets/transparent_appbar/transparent_appbar.dart';

main() {
  group('Testing TransparentAppBar', () {
    testWidgets('Should test that there is profil icon on appBar',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            appBar: TransparentAppBar(title: ''),
          ),
        ),
      );

      expect(find.widgetWithIcon(IconButton, Icons.person), findsOneWidget);
    });
  });
}
