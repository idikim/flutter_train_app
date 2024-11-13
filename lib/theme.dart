import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
    brightness: Brightness.light,
  ),
  highlightColor: Colors.purple,
  dividerColor: Colors.black38, // black opacity 38%
  sliderTheme: SliderThemeData(
    activeTrackColor: Colors.black38,
    inactiveTrackColor: Colors.black38,
    trackHeight: 1,
    thumbColor: Colors.purple,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(RoundedRectangleBorder()),
      backgroundColor: MaterialStatePropertyAll(Colors.purple),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(RoundedRectangleBorder()),
      side: MaterialStatePropertyAll(BorderSide(color: Colors.black38)),
      foregroundColor: MaterialStatePropertyAll(Colors.black),
    ),
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.purple,
    brightness: Brightness.dark,
  ),
  highlightColor: Colors.purple,
  dividerColor: Colors.white30, // white opacity 30%
  sliderTheme: SliderThemeData(
    activeTrackColor: Colors.white30, // 현재값 기준 왼쪽 색상
    inactiveTrackColor: Colors.white30, // 현재값 기준 오른쪽 색상
    trackHeight: 1, // 막대기 높이(두께)
    thumbColor: Colors.purple, // 동그라미 (현재값)
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(RoundedRectangleBorder()),
      backgroundColor: MaterialStatePropertyAll(Colors.purple), // 배경색
      // 전경색 (Text 등 child 위젯의 색상)
      foregroundColor: MaterialStatePropertyAll(Colors.white),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(RoundedRectangleBorder()),
      side: MaterialStatePropertyAll(BorderSide(color: Colors.white30)),
      foregroundColor: MaterialStatePropertyAll(Colors.white),
    ),
  ),
);
