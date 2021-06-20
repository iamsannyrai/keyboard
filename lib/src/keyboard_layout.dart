import 'package:flutter/material.dart';

import 'keyboard.dart';

class KeyboardLayout extends StatefulWidget {
  KeyboardLayout({Key? key}) : super(key: key);

  @override
  _KeyboardLayoutState createState() => _KeyboardLayoutState();
}

class _KeyboardLayoutState extends State<KeyboardLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Keyboard()),
    );
  }
}
