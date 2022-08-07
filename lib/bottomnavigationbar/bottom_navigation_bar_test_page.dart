import 'package:flutter/material.dart';

class BottomNavigationBarTestPage extends StatefulWidget {
  const BottomNavigationBarTestPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarTestPageState();
}

class _BottomNavigationBarTestPageState extends State {
  // 当前选中的tab
  int _currIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BottomNavigationBar，底部导航栏"),
        ),
        body: const Center(
          child: Text("BottomNavigationBar，页面内容"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // 指定当前选中的tab，因为需要根据用户选择的tab来动态修改 currentIndex 的值，所以需要实现有状态的组件
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
