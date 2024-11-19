import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeatBottom extends StatelessWidget {
  const SeatBottom({super.key});

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
                child: const Text("좌석 선택"),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
