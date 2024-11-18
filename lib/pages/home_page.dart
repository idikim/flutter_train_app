import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat_page.dart';
import 'package:flutter_train_app/pages/station_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.light
          ? Colors.grey[200]
          : Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('기차 예매'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: SizedBox(
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '출발역',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const StationListPage(title: '출발역'),
                                ),
                              );
                            },
                            child: const Text(
                              '선택',
                              style: TextStyle(
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 2, // 세로선의 두께
                        color: Colors.grey[400], // 세로선의 색깔
                        height: 50, // 세로선의 높이
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '도착역',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const StationListPage(title: '도착역'),
                                ),
                              );
                            },
                            child: const Text(
                              '선택',
                              style: TextStyle(fontSize: 40),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SeatPage()));
                },
                child: const Text("좌석 선택"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
