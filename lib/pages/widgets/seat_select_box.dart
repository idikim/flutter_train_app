import 'package:flutter/material.dart';

class SeatSelectBox extends StatefulWidget {
  const SeatSelectBox(this.selectedRow, this.selectedCol, this.onSelected);
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
        padding: EdgeInsets.symmetric(vertical: 20),
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
              SizedBox(height: 8),
              row(2),
              SizedBox(height: 8),
              row(3),
              SizedBox(height: 8),
              row(4),
              SizedBox(height: 8),
              row(5),
              SizedBox(height: 8),
              row(6),
              SizedBox(height: 8),
              row(7),
              SizedBox(height: 8),
              row(8),
              SizedBox(height: 8),
              row(9),
              SizedBox(height: 8),
              row(10),
              SizedBox(height: 8),
              row(11),
              SizedBox(height: 8),
              row(12),
              SizedBox(height: 8),
              row(13),
              SizedBox(height: 8),
              row(14),
              SizedBox(height: 8),
              row(15),
              SizedBox(height: 8),
              row(16),
              SizedBox(height: 8),
              row(17),
              SizedBox(height: 8),
              row(18),
              SizedBox(height: 8),
              row(19),
              SizedBox(height: 8),
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
          '$alphabet',
          style: TextStyle(fontSize: 18),
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
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }

  Widget seat(int rowNum, String colNum) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2),
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
                          ? Color.fromARGB(61, 158, 158, 158)
                          : Colors.grey[300],
              borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }
}
