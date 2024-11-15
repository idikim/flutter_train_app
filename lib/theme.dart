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
  sliderTheme: const SliderThemeData(
    activeTrackColor: Colors.black38,
    inactiveTrackColor: Colors.black38,
    trackHeight: 1,
    thumbColor: Colors.purple,
  ),
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
  sliderTheme: const SliderThemeData(
    activeTrackColor: Colors.white30, // 현재값 기준 왼쪽 색상
    inactiveTrackColor: Colors.white30, // 현재값 기준 오른쪽 색상
    trackHeight: 1, // 막대기 높이(두께)
    thumbColor: Colors.purple, // 동그라미 (현재값)
  ),
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
