import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'view/routes/mypage_route.dart';
import 'view/routes/talk_route.dart';
import 'view/routes/search_route.dart';
import 'view/routes/ng_route.dart';
import 'view/routes/favorite_route.dart';

class RootWidget extends StatefulWidget {
  RootWidget({Key key}) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  List<Widget> _pages;
  int _currentIndex = 0;

  @override
  void initState() {
    _pages = [MyPage(), Favorite(), Search(), Talk(), Store()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('ホーム')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text('LIKE')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('検索')),
          BottomNavigationBarItem(
              icon: Icon(Icons.textsms), title: Text('トーク')),
          BottomNavigationBarItem(
              icon: Icon(Icons.work, color: Colors.orange),
              title: Text('直送計画',
                  style: TextStyle(
                    color: Colors.orange,
                  ))),
        ],
      ),
    );
  }
}

//class RootWidget extends StatefulWidget {
//  RootWidget({Key key}) : super(key: key);
//
//  @override
//  _RootWidgetState createState() => _RootWidgetState();
//}
//
//class _RootWidgetState extends State<RootWidget> {
//  int _selectedIndex = 0;
//  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];
//
//  static const _footerIcons = [
//    Icons.person,
//    Icons.favorite_border,
//    Icons.search,
//    Icons.textsms,
//    Icons.work,
//  ];
//
//  static const _footerItemNames = [
//    'マイページ',
//    'お気に入り',
//    '検索',
//    'トーク',
//    '直送計画',
//  ];
//
//  var _routes = [Home(), Favorite(), Search(), Talk(), Store()];
//
//  @override
//  void initState() {
//    super.initState();
//    _bottomNavigationBarItems.add(_UpdateActiveState(0));
//    for (var i = 1; i < _footerItemNames.length; i++) {
//      _bottomNavigationBarItems.add(_UpdateDeactiveState(i));
//    }
//  }
//
//  BottomNavigationBarItem _UpdateActiveState(int index) {
//    return BottomNavigationBarItem(
//        icon: Icon(
//          _footerIcons[index],
//          color: Colors.orange,
//        ),
//        title: Text(
//          _footerItemNames[index],
//          style: TextStyle(
//            color: Colors.orange,
//          ),
//        ));
//  }
//
//  BottomNavigationBarItem _UpdateDeactiveState(int index) {
//    return BottomNavigationBarItem(
//        icon: Icon(
//          _footerIcons[index],
//          color: Colors.black26,
//        ),
//        title: Text(
//          _footerItemNames[index],
//          style: TextStyle(
//            color: Colors.black26,
//          ),
//        ));
//  }
//
//  void _onItemTapped(int index) {
//    setState(() {
//      _bottomNavigationBarItems[_selectedIndex] =
//          _UpdateDeactiveState(_selectedIndex);
//      _bottomNavigationBarItems[index] = _UpdateActiveState(index);
//      _selectedIndex = index;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: _routes.elementAt(_selectedIndex),
//      bottomNavigationBar: BottomNavigationBar(
//        type: BottomNavigationBarType.fixed,
//        items: _bottomNavigationBarItems,
//        currentIndex: _selectedIndex,
//        onTap: _onItemTapped,
//      ),
//    );
//  }
//}
