import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 输入控件
class GetTextFieldContextTestPage extends BasePageWidget {
  const GetTextFieldContextTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() =>
      _GetTextFieldContextTestPageState();
}

class _GetTextFieldContextTestPageState extends BasePageState {
  @override
  String pageTitle = "获取TextField内容";

  // 主要用于设置初始化输入内容
  var userNameController = TextEditingController();

  @override
  void initData() {
    userNameController.text = "初始值";
  }

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            // 设置 labelText 属性，则未输入时，labelText为hint值，输入时为标题，会移动到输入框顶部
            labelText: "用户名",
          ),
          controller: userNameController,
          onChanged: (value) {
            // 把输入的内容保存到Controller中
            userNameController.text = value;
          },
        ),
        const SizedBox(height: 20),
        SizedBox(
          // 设置组件宽度为 match_parent
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              print("获取输入的内容是：${userNameController.text}");
            },
            child: const Text("提交"),
          ),
        )
      ],
    );
  }
}
