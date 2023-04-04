import 'package:flutter/material.dart';
import 'package:stopwatch/WatchView.dart';
class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return (
      MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          colorSchemeSeed: const Color(0xff0D031B)
        ),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home:WatchView(),
      )
    );
  }
}