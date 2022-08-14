import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 输入控件
class CheckBoxTestPage extends BasePageWidget {
  const CheckBoxTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _CheckBoxTestPageState();
}

class _CheckBoxTestPageState extends BasePageState {
  @override
  String pageTitle = "CheckBox多选框组件";

  // 多选框是否选中
  bool? _isChecked = true;

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Column(
          children: [
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value;
                });
              },
              // 选中的颜色
              activeColor: Colors.red,
            ),
            Text(_isChecked == true ? "选中" : "未选中"),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          color: Colors.yellow,
          child: CheckboxListTile(
            value: _isChecked,
            title: const Text("标题"),
            subtitle: const Text("副标题"),
            onChanged: (value) {
              setState(() {
                _isChecked = value;
              });
            },
          ),
        ),
        const SizedBox(height: 20),
        Container(
          color: Colors.yellow,
          child: CheckboxListTile(
            value: _isChecked,
            title: const Text("标题"),
            subtitle: const Text("副标题"),
            onChanged: (value) {
              setState(() {
                _isChecked = value;
              });
            },
            secondary: const Icon(Icons.home),
          ),
        ),
      ],
    );
  }

  @override
  void initData() {}
}
