import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _departureStation = '선택';
  String _arrivalStation = '선택'; // 초기값을 '선택'으로 설정

  void _navigateToStationList(String title) async {
    final selectedStation =
        await Navigator.pushNamed(context, '/stationList', arguments: title)
            as String?;
    setState(() {
      if (title == '출발역') {
        _departureStation = selectedStation ?? '선택';
      } else {
        _arrivalStation = selectedStation ?? '선택';
      }
    });
  }

  void _navigateToSeatPage() {
    if (_departureStation != '선택' && _arrivalStation != '선택') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SeatPage()));
    } else {
      // 알림 메시지 표시 (선택되지 않은 버튼이 있다는 메시지)
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('출발역과 도착역을 모두 선택해주세요.')),
      );
    }
  }

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
                          GestureDetector(
                            onTap: () => _navigateToStationList('출발역'),
                            child: Text(
                              _departureStation,
                              style: const TextStyle(fontSize: 40),
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
                          GestureDetector(
                            onTap: () => _navigateToStationList('도착역'),
                            child: Text(
                              _arrivalStation,
                              style: const TextStyle(fontSize: 40),
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
                onPressed: _navigateToSeatPage,
                child: const Text("좌석 선택"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
