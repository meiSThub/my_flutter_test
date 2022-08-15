

import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 模拟咸鱼首页的浮动按钮
class SaltedFishHomePage extends BasePageWidget {
  const SaltedFishHomePage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _SaltedFishHomePageState();
}

class _SaltedFishHomePageState extends BasePageState {
  @override
  String pageTitle = "咸鱼首页";

  int _currentIndex = 0;

  @override
  bool hasAppBar() => false;

  @override
  Widget buildContentView() {
    return Scaffold(
      appBar: AppBar(title: Text(pageTitle)),
      body: const Center(
        child: Text("页面内容"),
      ),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        // 调整按钮的位置
        margin: const EdgeInsets.only(top: 2),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white, // 修饰按钮白圈
          borderRadius: BorderRadius.circular(31),
        ),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          },
          child: const Icon(
            Icons.add,
            // 图标颜色
            color: Colors.white,
            size: 30,
          ),
          // 按钮背景色
          backgroundColor: _currentIndex == 2 ? Colors.red : Colors.yellow,
        ),
      ),
      // 修改按钮位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: "发布"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "消息"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black38,
        // 固定
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  @override
  void initData() {}
}
