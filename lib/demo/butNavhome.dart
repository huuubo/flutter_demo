import 'package:flutter/material.dart';

class tabs extends StatefulWidget {
  tabs({Key key}) : super(key: key);

  @override
  _tabsState createState() => _tabsState();
}

class _tabsState extends State<tabs> {

  int _currentIndex = 0;
  List<Widget> _pageList = [
    // Home(),
    // Search(),
    // People()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index){
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), 
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search), 
              title: Text('搜索')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people), 
              title: Text('我的')
            ),
          ]
      )
    );
  }
}
