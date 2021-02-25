import 'package:flutter/material.dart';
import 'package:underclocking/routes.dart';
import 'package:underclocking/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  // Initialize Firebase
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        // Initialize FlutterFire:
        future: _initialization,
        builder: (context, snapshot) {
          // Check for erros
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Text('Sorry an error occured during initialization'),
              ),
            );
          }
          // Once complete, show the app
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                  // This is the theme of your application.
                  primarySwatch: Colors.red,
                  brightness: Brightness.dark),
              home: HomeScreen(),
              routes: routes(),
            );
          } else {
            return RefreshProgressIndicator();
          }
        });
  }
}
