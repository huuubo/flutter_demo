import 'package:flutter/material.dart';

class ButtomNavDemo extends StatefulWidget {
  ButtomNavDemo({Key key}) : super(key: key);

  @override
  _ButtomNavDemoState createState() => _ButtomNavDemoState();
}

class _ButtomNavDemoState extends State<ButtomNavDemo> {
  int _currentIndex = 0;
  void _changeIndex (int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _changeIndex,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
        BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('搜索')),
        BottomNavigationBarItem(icon: Icon(Icons.history), title: Text('历史')),
        BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('我的')),
      ]
    );
  }
}
