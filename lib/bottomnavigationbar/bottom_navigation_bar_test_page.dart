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
          // 当tab比较多的时候，设置该属性，使其能够正常显示，但不可以滚动，还是一行显示
          type: BottomNavigationBarType.fixed,
          // tab view
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "个人中心"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "个人中心2"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "个人中心3"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "个人中心4"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "个人中心5"),
          ],
        ),
      ),
    );
  }
}
