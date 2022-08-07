import 'package:flutter/material.dart';

import 'category.dart';
import 'home.dart';
import 'person.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TabsState();
}

class _TabsState extends State {
  /// 当前选中的tab下标
  int _currIndex = 0;

  // 页面对象
  final List<Widget> _pageList = const [
    HomePage(),
    CategoryPage(),
    PersonPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pageList[_currIndex],
        bottomNavigationBar: BottomNavigationBar(
          // 指定当前选中的tab
          currentIndex: _currIndex,
          // tab 的点击事件
          onTap: (int index) {
            // 修改当前选中的tab，并通知页面状态改变
            setState(() {
              _currIndex = index;
            });
          },
          // icon图标的大小
          iconSize: 36,
          // tab选中时的颜色
          fixedColor: Colors.red,
          // tab view
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "个人中心"),
          ],
        ),
      ),
    );
  }
}
