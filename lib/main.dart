import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home_page.dart';
import 'package:flutter_train_app/pages/seat_page.dart';
import 'package:flutter_train_app/pages/station_list_page.dart';
import 'package:flutter_train_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/home': (context) => HomePage(),
        '/stationList': (context) => StationListPage(
              title: ModalRoute.of(context)!.settings.arguments as String,
            ),
        '/seatPage': (context) => SeatPage()
      },
    );
  }
}
