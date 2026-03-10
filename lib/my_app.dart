import 'package:flutter/material.dart';
import 'package:recast_restaurant_ui/core/constants/constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const Scaffold(body: Center(child: Text("Recast Restaurant UI"))),
    );
  }
}
