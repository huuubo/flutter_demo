import 'package:flutter/material.dart';
import 'butNavhome.dart';
void main() {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: tabs(),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}

