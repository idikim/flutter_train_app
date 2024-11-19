import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home_page.dart';
import 'package:flutter_train_app/pages/station_list_page.dart';
import 'package:flutter_train_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}
