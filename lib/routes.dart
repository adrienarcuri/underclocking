import 'package:flutter/widgets.dart';
import 'package:underclocking/screens/cpu_screen.dart';
import 'package:underclocking/screens/gpu_screen.dart';
import 'package:underclocking/screens/home_screen.dart';
import 'package:underclocking/screens/motherboard_screen.dart';
import 'package:underclocking/screens/ram_screen.dart';

Map<String, WidgetBuilder> routes() {
  return {
    HomeScreen.routeName: (context) => HomeScreen(),
    CpuScreen.routeName: (context) => CpuScreen(),
    GpuScreen.routeName: (context) => GpuScreen(),
    RamScreen.routeName: (context) => RamScreen(),
    MotherboardScreen.routeName: (context) => MotherboardScreen(),
  };
}
