import 'package:flutter/material.dart';
import 'package:underclocking/screens/cpu_screen.dart';
import 'package:underclocking/screens/gpu_screen.dart';
import 'package:underclocking/screens/home_screen.dart';
import 'package:underclocking/screens/motherboard_screen.dart';
import 'package:underclocking/screens/ram_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.red,
          brightness: Brightness.dark),
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        CpuScreen.routeName: (context) => CpuScreen(),
        GpuScreen.routeName: (context) => GpuScreen(),
        RamScreen.routeName: (context) => RamScreen(),
        MotherboardScreen.routeName: (context) => MotherboardScreen(),
      },
    );
  }
}
