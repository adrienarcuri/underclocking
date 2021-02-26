import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:underclocking/main.dart';
import 'package:underclocking/routes.dart';
import 'package:underclocking/screens/cpu_screen.dart';
import 'package:underclocking/screens/gpu_screen.dart';
import 'package:underclocking/screens/home_screen.dart';
import 'package:underclocking/screens/motherboard_screen.dart';
import 'package:underclocking/screens/pc_screen.dart';
import 'package:underclocking/screens/ram_screen.dart';
import 'package:underclocking/widgets/fluo_button/fluo_button.dart';

void main() {
  _createHomeScreen() => MaterialApp(
        home: Scaffold(
          body: HomeScreen(),
        ),
        routes: routes(),
      );
  group('Home Screen Testing', () {
    testWidgets('Should test if the screen shows up', (tester) async {
      await tester.pumpWidget(_createHomeScreen());

      expect(find.text('UnderClocking'), findsOneWidget);
      expect(find.text('Share overclocking config'), findsOneWidget);
      expect(find.text('CPU'), findsOneWidget);
      expect(find.text('GPU'), findsOneWidget);
      expect(find.text('RAM'), findsOneWidget);
      expect(find.text('PC'), findsWidgets);
      expect(find.text('All categories'), findsOneWidget);
    });

    testWidgets('Should navigate to CPU screen', (tester) async {
      await tester.pumpWidget(_createHomeScreen());

      expect(find.byType(CpuScreen), findsNothing);
      var button = find.widgetWithText(FluoButton, 'CPU');

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(find.byType(CpuScreen), findsOneWidget);
      expect(find.byType(HomeScreen), findsNothing);
    });

    testWidgets('Should navigate to PC screen', (tester) async {
      await tester.pumpWidget(_createHomeScreen());

      expect(find.byType(PcScreen), findsNothing);
      var button = find.widgetWithText(FluoButton, 'PC');

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(find.byType(PcScreen), findsOneWidget);
      expect(find.byType(HomeScreen), findsNothing);
    });
    testWidgets('Should navigate to GPU screen', (tester) async {
      await tester.pumpWidget(_createHomeScreen());

      expect(find.byType(GpuScreen), findsNothing);
      var button = find.widgetWithText(FluoButton, 'GPU');
      await tester.ensureVisible(button);

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(find.byType(GpuScreen), findsOneWidget);
      expect(find.byType(HomeScreen), findsNothing);
    }, skip: true);

    testWidgets('Should navigate to RAM screen', (tester) async {
      await tester.pumpWidget(_createHomeScreen());

      expect(find.byType(RamScreen), findsNothing);
      var button = find.widgetWithText(FluoButton, 'RAM');
      await tester.drag(find.byType(ListView), Offset(0, 100));
      await tester.ensureVisible(button);

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(find.byType(RamScreen), findsOneWidget);
      expect(find.byType(HomeScreen), findsNothing);
    }, skip: true);
    testWidgets('Should navigate to Motherboard screen', (tester) async {
      await tester.pumpWidget(_createHomeScreen());

      expect(find.byType(MotherboardScreen), findsNothing);

      var button = find.widgetWithText(FluoButton, 'Motherboard');
      await tester.scrollUntilVisible(button, 1);

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(find.byType(MotherboardScreen), findsOneWidget);
      expect(find.byType(HomeScreen), findsNothing);
    }, skip: true);
  });
}
