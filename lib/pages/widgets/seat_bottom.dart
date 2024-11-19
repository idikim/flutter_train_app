import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/home_page.dart';

class SeatBottom extends StatefulWidget {
  const SeatBottom(this.selectedRow, this.selectedCol, {super.key});
  final int? selectedRow;
  final String? selectedCol;

  @override
  State<SeatBottom> createState() => _SeatBottomState();
}

class _SeatBottomState extends State<SeatBottom> {
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
                  if (widget.selectedRow != null &&
                      widget.selectedCol != null) {
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: const Text("예매 하시겠습니까?"),
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
                              // HomePage로 이동하고 뒤로가기 버튼 완전히 비활성화
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()),
                                (route) => false, // 모든 Route를 제거
                              );
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
                  }
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
