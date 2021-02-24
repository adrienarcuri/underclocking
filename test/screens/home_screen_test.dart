import 'package:flutter_test/flutter_test.dart';
import 'package:underclocking/main.dart';
import 'package:underclocking/screens/cpu_screen.dart';
import 'package:underclocking/screens/gpu_screen.dart';
import 'package:underclocking/screens/home_screen.dart';
import 'package:underclocking/screens/motherboard_screen.dart';
import 'package:underclocking/screens/ram_screen.dart';
import 'package:underclocking/widgets/fluo_button/fluo_button.dart';

void main() {
  _createHomeScreen() => MyApp();
  group('Home Screen Testing', () {
    testWidgets('Should test if the screen shows up', (tester) async {
      await tester.pumpWidget(_createHomeScreen());

      expect(find.text('UnderClocking'), findsOneWidget);
      expect(find.text('Share overclocking config'), findsOneWidget);
      expect(find.text('CPU'), findsOneWidget);
      expect(find.text('GPU'), findsOneWidget);
      expect(find.text('RAM'), findsOneWidget);
      expect(find.text('Motherboard'), findsOneWidget);
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
    testWidgets('Should navigate to GPU screen', (tester) async {
      await tester.pumpWidget(_createHomeScreen());

      expect(find.byType(GpuScreen), findsNothing);
      var button = find.widgetWithText(FluoButton, 'GPU');

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(find.byType(GpuScreen), findsOneWidget);
      expect(find.byType(HomeScreen), findsNothing);
    });

    testWidgets('Should navigate to RAM screen', (tester) async {
      await tester.pumpWidget(_createHomeScreen());

      expect(find.byType(RamScreen), findsNothing);
      var button = find.widgetWithText(FluoButton, 'RAM');

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(find.byType(RamScreen), findsOneWidget);
      expect(find.byType(HomeScreen), findsNothing);
    });
    testWidgets('Should navigate to Motherboard screen', (tester) async {
      await tester.pumpWidget(_createHomeScreen());

      expect(find.byType(MotherboardScreen), findsNothing);

      var button = find.widgetWithText(FluoButton, 'Motherboard');

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(find.byType(MotherboardScreen), findsOneWidget);
      expect(find.byType(HomeScreen), findsNothing);
    });
  });
}
