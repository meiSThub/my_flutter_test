

import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 系统时间获取与时间格式化
class SystemTimePage extends BasePageWidget {
  const SystemTimePage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _SystemTimePageState();
}

class _SystemTimePageState extends BasePageState {
  @override
  String pageTitle = "系统时间获取与格式化";

  // 开关是否打开
  bool isOpened = true;

  // 时间戳
  var timestamp = DateTime.now();

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Text("当前时间：$timestamp"),
        Text(" 时间戳：${timestamp.millisecondsSinceEpoch}"),
        Text(
            "通过时间戳格式化日期：${DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch)}"),
      ],
    );
  }

  @override
  void initData() {}
}
