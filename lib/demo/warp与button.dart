import 'package:flutter/material.dart';
import 'falseData/list.dart';

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
    return Container(
      width: 300,
      color: Colors.red,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        alignment: WrapAlignment.center,
        children: <Widget>[
          MyButton('第一111季'),
          MyButton('第二季'),
          MyButton('第三季'),
          MyButton('第45四季'),
          MyButton('第五111季'),
          MyButton('第六20季'),
          MyButton('第七00季'),
          MyButton('第八545646季')
        ],
      ),
    );
  }
}

// 封装按钮
class MyButton extends StatelessWidget {
  // 传参
  final String text;
  // 必须初始化最后一个变量“text”,不是太理解。
  const MyButton(this.text, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
        child: Text(this.text), textColor: Colors.red, onPressed: () {});
  }
}
