import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/widgets/seat_bottom.dart';
import 'package:flutter_train_app/pages/widgets/seat_select_box.dart';

class SeatPage extends StatelessWidget {
  const SeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('좌석 선택'),
      ),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '수서',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_circle_right_outlined,
                size: 30,
              ),
              Text('부산',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 첫 번째 상자
                Container(
                    decoration: ShapeDecoration(
                        color: Colors.purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    width: 24,
                    height: 24),

                // 첫 번째 글자
                const SizedBox(width: 4),
                const Text('선택됨'),
                // 여백
                const SizedBox(width: 20),
                // 두 번째 상자
                Container(
                    decoration: ShapeDecoration(
                        color: Colors.grey[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    width: 24,
                    height: 24),
                // 두 번째 글자
                const SizedBox(width: 4),
                const Text('선택안됨'),
              ],
            ),
          ),
          SeatSelectBox(),
          SeatBottom()
        ],
      ),
    );
  }
}
