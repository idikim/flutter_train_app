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
      themeMode: ThemeMode.system,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/home': (context) => const HomePage(),
        '/stationList': (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return StationListPage(
            title: args['title'],
            selectedStation: args['selectedStation'],
          );
        },
        '/seatPage': (context) => const SeatPage()
      },
    );
  }
}
