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
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}

class Content extends StatefulWidget {
  Content({Key key}) : super(key: key);
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {

  int countNum = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 50, 0, 0),
      width: 300,
      height: 300,
      color: Colors.blue,
      child: Center(
          child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 50),
            child: Text(
              '$countNum',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          RaisedButton(
            child: Text('点我+1'),
            color: Colors.white,
            textColor: Colors.red,
            onPressed: () {
              print(this);
              setState(() {
                countNum++;
              });
            },
          )
        ],
      )),
    );
  }
}
