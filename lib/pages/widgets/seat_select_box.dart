import 'package:flutter/material.dart';

class SeatSelectBox extends StatelessWidget {
  const SeatSelectBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                seat(),
                SizedBox(
                  width: 4,
                ),
                seat(),
                SizedBox(
                  width: 4,
                ),
                const SizedBox(
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                seat(),
                SizedBox(
                  width: 4,
                ),
                seat(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget seat() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
    );
  }
}
