import 'package:flutter/material.dart';

class MousePad extends StatelessWidget {
  const MousePad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 178,
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black12),
      ),
    );
  }
}
