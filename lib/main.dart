import 'package:flutter/material.dart';

import 'src/keyboard_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Macbook Pro Keyboard',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: KeyboardLayout(),
    );
  }
}
