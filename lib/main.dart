import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stop_watch_app/screens/stop_watch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StopWatch App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: HexColor('333739'),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          color: HexColor('333739'),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const StopWatchScreen(),
    );
  }
}
