import 'package:flutter/material.dart';

class LocationBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        gender(Icons.male, 'MALE'),
        gender(Icons.female, 'FEMALE'),
      ],
    );
  }

  Widget gender(IconData icon, String text) {
    return Expanded(child: Container());
  }
}
