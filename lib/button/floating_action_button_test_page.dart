import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 按钮页面
class FloatingActionButtonTestPage extends BasePageWidget {
  const FloatingActionButtonTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() =>
      _FloatingActionButtonTestPageState();
}

class _FloatingActionButtonTestPageState extends BasePageState {
  @override
  String pageTitle = "FloatingActionButton按钮";

  @override
  Widget buildContentView() {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          // 图标颜色
          color: Colors.blue,
          size: 40,
        ),
        // 按钮背景色
        backgroundColor: Colors.purple,
      ),
      // 修改按钮位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  void initData() {}
}
