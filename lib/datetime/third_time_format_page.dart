import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:date_format/date_format.dart';

/// 第三方时间格式化工具
class ThirdTimePage extends BasePageWidget {
  const ThirdTimePage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _ThirdTimePageState();
}

class _ThirdTimePageState extends BasePageState {
  @override
  String pageTitle = " 第三方时间格式化工具";

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
        Text("格式化：${formatDate(timestamp, [yyyy, "年", mm, "月", dd, "日"])}"),
        Text("格式化：${formatDate(timestamp, [yyyy, "年", mm, "月", dd, "日",HH,"时",nn,"分",ss,"秒"])}"),
        Text("格式化：${formatDate(timestamp, [yyyy, "/", mm, "/", dd])}"),
      ],
    );
  }

  @override
  void initData() {}
}
