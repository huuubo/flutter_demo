import 'package:flutter/material.dart';
import '../falseData/list.dart';

class BaseDemo extends StatelessWidget {
  const BaseDemo({Key key}) : super(key: key);

  Widget _showList(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            testData[index].imageUrl, 
            fit: BoxFit.cover
          ),
        ),
        Positioned(
          left: 8.0,
          bottom: 20.0,
          child: Column(
            children: <Widget>[
              Text(
                testData[index].title
              ),
              Text(
                testData[index].subTitle
              ),
            ],
          )
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: testData.length,
      itemBuilder: _showList,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment(0, 0),
          child: Text(
            '红',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment(0, 0),
          child: Text(
            '黄',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment(0, 0),
          child: Text(
            '蓝',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        )
      ],
    );
  }
}
