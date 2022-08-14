import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 单选框组件
class RadioTestPage extends BasePageWidget {
  const RadioTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _RadioTestPageState();
}

class _RadioTestPageState extends BasePageState {
  @override
  String pageTitle = "Radio单选框组件";

  // 多选框是否选中
  int _sex = 1;

  // 学历
  int _education = 1;

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Row(
          children: [
            const Text("男:"),
            Radio(
              // 选中当前单选框时，代表的值
              value: 1,
              onChanged: (value) {
                setState(() {
                  _sex = 1;
                });
              },
              // 选中的颜色
              activeColor: Colors.red,
              // groupValue 指向同一变量，说明 Radio 是同一个分组
              groupValue: _sex,
            ),
            const Text("女:"),
            Radio(
              value: 2,
              onChanged: (value) {
                setState(() {
                  _sex = 2;
                });
              },
              // 选中的颜色
              activeColor: Colors.red,
              groupValue: _sex,
            ),
          ],
        ),
        const SizedBox(height: 20),
        _buildEducationView(),
      ],
    );
  }

  Widget _buildEducationView() {
    return Card(
      child: Column(
        children: [
          const Text(
            "选择学历",
            style: TextStyle(fontSize: 20),
          ),
          Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(10),
            child: RadioListTile(
              value: 1,
              groupValue: _education,
              onChanged: (value) {
                setState(() {
                  _education = int.parse(value.toString());
                });
              },
              title: const Text("小学"),
              // 当前Item 是否选中，如果是选中状态，则问题也会高亮
              selected: _education == 1,
              secondary: const Icon(Icons.cast_for_education_rounded),
            ),
          ),
          Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(10),
            child: RadioListTile(
              value: 2,
              groupValue: _education,
              onChanged: (value) {
                setState(() {
                  _education = int.parse(value.toString());
                });
              },
              title: const Text("中学"),
              // 当前Item 是否选中，如果是选中状态，则问题也会高亮
              selected: _education == 2,
              secondary: const Icon(Icons.cast_for_education_rounded),
            ),
          ),
          Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(10),
            child: RadioListTile(
              value: 3,
              groupValue: _education,
              onChanged: (value) {
                setState(() {
                  _education = int.parse(value.toString());
                });
              },
              title: const Text("高中"),
              // 当前Item 是否选中，如果是选中状态，则问题也会高亮
              selected: _education == 3,
              secondary: const Icon(Icons.cast_for_education_rounded),
            ),
          ),
          Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(10),
            child: RadioListTile(
              value: 4,
              groupValue: _education,
              onChanged: (value) {
                setState(() {
                  _education = int.parse(value.toString());
                });
              },
              title: const Text("大学"),
              // 当前Item 是否选中，如果是选中状态，则问题也会高亮
              selected: _education == 4,
              secondary: const Icon(Icons.cast_for_education_rounded),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initData() {}
}
