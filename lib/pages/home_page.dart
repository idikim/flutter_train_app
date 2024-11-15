import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat_page.dart';
import 'package:flutter_train_app/pages/station_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    children: [
                      const Spacer(),
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const StationListPage()));
                            },
                            child: const Text(
                              '선택',
                              style: TextStyle(fontSize: 40),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 2, // 세로선의 두께
                        color: Colors.grey[400], // 세로선의 색깔
                        height: 50, // 세로선의 높이
                      ),
                      const Spacer(),
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const StationListPage()));
                            },
                            child: const Text(
                              '선택',
                              style: TextStyle(fontSize: 40),
                            ),
                          ),
                        ],
                      ),
                      const Spacer()
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
