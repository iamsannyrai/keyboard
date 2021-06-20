import 'package:flutter/material.dart';

import 'keypad.dart';
import 'mousepad.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 1000,
      decoration: BoxDecoration(
        color: Color(0xffd9d9d9),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 6),
          )
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Keypad(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MousePad(),
              SizedBox(width: 40),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
