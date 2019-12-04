import 'package:flutter/material.dart';



class News extends StatelessWidget {
  const News({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title:  Text('新闻页'),
      ),
      body: Center(
        child: Text('我是新闻,好看吧'),
      )
    );
  }
}