import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  const StationListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '출발역',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Text('result'),
    );
  }
}
