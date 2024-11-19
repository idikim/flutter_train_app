import 'package:flutter/material.dart';

class SeatSelectBox extends StatelessWidget {
  const SeatSelectBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Text(
            'A',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            width: 50,
            height: 2000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                seat(),
                seat(),
                seat(),
                seat(),
                seat(),
                seat(),
                seat(),
                seat(),
                seat(),
                seat(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget seat() {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
