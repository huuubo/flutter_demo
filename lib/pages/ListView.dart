import 'package:flutter/material.dart';
import '../falseData/list.dart';

class ListVivw extends StatelessWidget {
  const ListVivw({Key key}) : super(key: key);

  Widget _showList(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.all(8.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.network(testData[index].imageUrl),
          Text(
            testData[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            testData[index].subTitle,
            style: Theme.of(context).textTheme.subtitle,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: testData.length,
        itemBuilder: _showList,
      );
  }
}




