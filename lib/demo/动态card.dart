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
    return ListView(
        children: testData.map((val) {
      return Card(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9, // 宽高比
                child: Image.network(
                    val['imgUrl'],
                    fit: BoxFit.cover),
              ),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'http://10.168.97.192:8089/upload/2019/1574068154070.jpeg')),
                title: Text(val['title']),
                subtitle: Text(val['subTtile']),
              )
            ],
          ));
    }).toList());
  }
}
