import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/router/page_num.dart';

/// 开关组件 Switch
class DateTimeHomePage extends BasePageWidget {
  const DateTimeHomePage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _DateTimeHomePageState();
}

class _DateTimeHomePageState extends BasePageState {
  @override
  String pageTitle = "时间与格式化首页";

  // 开关是否打开
  bool isOpened = true;

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.systemTimePage);
          },
          child: const Text("系统时间获取与格式化"),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.thirdTimePage);
          },
          child: const Text("第三方时间格式化库：date_format"),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.systemTimeSelectorPage);
          },
          child: const Text("系统日期和时间选择器"),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.thirdDateAndTimeSelectorPage);
          },
          child: const Text("第三方日期和时间选择器"),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  @override
  void initData() {}
}
