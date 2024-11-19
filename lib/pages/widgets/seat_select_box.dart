import 'package:flutter/material.dart';

class SeatSelectBox extends StatefulWidget {
  const SeatSelectBox(this.selectedRow, this.selectedCol, this.onSelected,
      {super.key});
  final int? selectedRow;
  final String? selectedCol;
  final void Function(int rowNum, String colNum) onSelected;

  @override
  State<SeatSelectBox> createState() => _SeatSelectBoxState();
}

class _SeatSelectBoxState extends State<SeatSelectBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  colNumber('A'),
                  colNumber('B'),
                  colNumber(''),
                  colNumber('C'),
                  colNumber('D'),
                ],
              ),
              row(1),
              const SizedBox(height: 8),
              row(2),
              const SizedBox(height: 8),
              row(3),
              const SizedBox(height: 8),
              row(4),
              const SizedBox(height: 8),
              row(5),
              const SizedBox(height: 8),
              row(6),
              const SizedBox(height: 8),
              row(7),
              const SizedBox(height: 8),
              row(8),
              const SizedBox(height: 8),
              row(9),
              const SizedBox(height: 8),
              row(10),
              const SizedBox(height: 8),
              row(11),
              const SizedBox(height: 8),
              row(12),
              const SizedBox(height: 8),
              row(13),
              const SizedBox(height: 8),
              row(14),
              const SizedBox(height: 8),
              row(15),
              const SizedBox(height: 8),
              row(16),
              const SizedBox(height: 8),
              row(17),
              const SizedBox(height: 8),
              row(18),
              const SizedBox(height: 8),
              row(19),
              const SizedBox(height: 8),
              row(20),
            ],
          ),
        ],
      ),
    );
  }

  Padding colNumber(String alphabet) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Center(
            child: Text(
          alphabet,
          style: const TextStyle(fontSize: 18),
        )),
      ),
    );
  }

  Row row(int rowNum) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        seat(rowNum, 'A'),
        seat(rowNum, 'B'),
        rowNumber(rowNum),
        seat(rowNum, 'C'),
        seat(rowNum, 'D'),
      ],
    );
  }

  Padding rowNumber(int rowNum) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: SizedBox(
        width: 50,
        height: 50,
        child: Center(
          child: Text(
            '$rowNum',
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }

  Widget seat(int rowNum, String colNum) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: GestureDetector(
        onTap: () {
          widget.onSelected(rowNum, colNum);
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color:
                  widget.selectedRow == rowNum && widget.selectedCol == colNum
                      ? Colors.purple
                      : Theme.of(context).brightness == Brightness.dark
                          ? const Color.fromARGB(61, 158, 158, 158)
                          : Colors.grey[300],
              borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
