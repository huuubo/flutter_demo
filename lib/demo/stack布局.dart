import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Content(),
      ),
      theme: ThemeData(primaryColor: Colors.red),
    );
  }
}

// 主体
class Content extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300.0,
        width: 300.0,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(0.8, 0),
              child: Icon(
                Icons.home,size: 40,color: Colors.white
              ),
            ),
            Align(
              alignment: Alignment(-0.8, 0),
              child: Icon(
                Icons.search,size: 40,color: Colors.white
              ),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Icon(
                Icons.send,size: 40,color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}

