import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 开关组件 Switch
class SwitchTestPage extends BasePageWidget {
  const SwitchTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _SwitchTestPageState();
}

class _SwitchTestPageState extends BasePageState {
  @override
  String pageTitle = "开关组件Switch";

  // 开关是否打开
  bool isOpened = true;

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Switch(
          value: isOpened,
          onChanged: (value) {
            setState(() {
              isOpened = value;
            });
          },
        ),
      ],
    );
  }

  @override
  void initData() {}
}
