import 'package:flutter/material.dart';

import 'keyboard.dart';

class KeyboardLayout extends StatelessWidget {
  KeyboardLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Keyboard()),
    );
  }
}
