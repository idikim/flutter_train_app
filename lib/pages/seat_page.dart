import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/widgets/seat_bottom.dart';
import 'package:flutter_train_app/pages/widgets/seat_select_box.dart';

class SeatPage extends StatefulWidget {
  const SeatPage({super.key});

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  int? selectedRow;
  String? selectedCol;

  void onSelected(int rowNum, String colNum) {
    setState(() {
      selectedRow = rowNum;
      selectedCol = colNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final departureStation = args['departureStation'];
    final arrivalStation = args['arrivalStation'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('좌석 선택'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    '$departureStation',
                    style: const TextStyle(
                        fontSize: 30,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Center(
                child: Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 30,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text('$arrivalStation',
                      style: const TextStyle(
                          fontSize: 30,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: seatInfo(),
          ),
          SeatSelectBox(selectedRow, selectedCol, onSelected),
          SeatBottom(selectedRow, selectedCol)
        ],
      ),
    );
  }

  Row seatInfo() {
    return Row(
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
                color: Theme.of(context).brightness == Brightness.dark
                    ? const Color.fromARGB(61, 158, 158, 158)
                    : Colors.grey[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
            width: 24,
            height: 24),
        // 두 번째 글자
        const SizedBox(width: 4),
        const Text('선택안됨'),
      ],
    );
  }
}
