import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeatBottom extends StatelessWidget {
  const SeatBottom(this.selectedRow, this.selectedCol);
  final int? selectedRow;
  final String? selectedCol;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 110,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: Text(selectedRow == null && selectedCol == null
                          ? '선택된 좌석이 없습니다.'
                          : "예매 하시겠습니까?"),
                      actions: [
                        CupertinoDialogAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "취소",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        CupertinoDialogAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: const Text(
                              "확인",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text("예매 하기"),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
