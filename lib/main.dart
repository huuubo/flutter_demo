import 'package:flutter/material.dart';
import './pages/buttom_nav_demo.dart';
import 'pages/ListView.dart';
import 'pages/base_demo.dart';
void main() {
  runApp(MyApp());
}

// 自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(primarySwatch: Colors.yellow));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('LIUBO'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('this is a search');
                },
              )
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorWeight: 1.0,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.black87,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              // Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
              ListVivw(),
              BaseDemo(),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12)
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('LiuBo'),
                  accountEmail: Text('jueniuleili96@163.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('http://10.168.97.192:8089/upload/2019/1574068154070.jpeg'),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    image: DecorationImage(
                      image: NetworkImage('https://www.itying.com/images/flutter/6.png'),
                      fit: BoxFit.cover,
            
                    )
                  )
                ),
                ListTile(
                  title: Text(
                    'Message',
                    textAlign: TextAlign.right,
                  ),
                  trailing: Icon(
                    Icons.message,
                    size: 22.0,
                    color: Colors.black12,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Fastfood',
                    textAlign: TextAlign.right,
                  ),
                  trailing: Icon(
                    Icons.fastfood,
                    size: 22.0,
                    color: Colors.black12,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Settings',
                    textAlign: TextAlign.right,
                  ),
                  trailing: Icon(
                    Icons.settings,
                    size: 22.0,
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: ButtomNavDemo()
      ),
    );
  }
}
