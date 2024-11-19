import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.purple, brightness: Brightness.light),
  cardTheme: CardTheme(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),

  highlightColor: Colors.white,
  dividerColor: Colors.black38, // black opacity 38%

  textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

  textButtonTheme: const TextButtonThemeData(
      style:
          ButtonStyle(foregroundColor: WidgetStatePropertyAll(Colors.black))),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const WidgetStatePropertyAll(EdgeInsets.all(20)),
      textStyle: WidgetStateProperty.all(
          const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      backgroundColor: const WidgetStatePropertyAll(Colors.purple),
      foregroundColor: const WidgetStatePropertyAll(Colors.white),
    ),
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
    brightness: Brightness.dark,
  ),

  cardTheme: CardTheme(
      color: const Color.fromARGB(61, 158, 158, 158),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
  highlightColor: Colors.purple,
  dividerColor: Colors.white30, // white opacity 30%

  textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

  textButtonTheme: const TextButtonThemeData(
      style:
          ButtonStyle(foregroundColor: WidgetStatePropertyAll(Colors.white))),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: const WidgetStatePropertyAll(EdgeInsets.all(20)),
      textStyle: WidgetStateProperty.all(
          const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      backgroundColor: const WidgetStatePropertyAll(Colors.purple),
      foregroundColor: const WidgetStatePropertyAll(Colors.white),
    ),
  ),
);
