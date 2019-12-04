import 'package:flutter/material.dart';
import 'package:flutter_app/demo/card.dart';
import '../router/news.dart';
import '../router/muisc.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到新闻页面"),
          textColor:  Colors.white,
          color: Colors.blue,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => News())
            );
          },
        ),
        RaisedButton(
          child: Text("跳转到音乐页面"),
          textColor:  Colors.white,
          color: Colors.blue,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Music('我是传递过来的值'))
            );
          },
        )
      ],
    );
  }
}

class MeteriaPageRoute {
}
