import 'package:flutter/material.dart';
class Music extends StatelessWidget {
  const Music(String title,{Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('音乐页'),
        ),
        body: Center(
          child: Text('我是音乐,好听不?'),
        ),
      ),
    );
  }
}