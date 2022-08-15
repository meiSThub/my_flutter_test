

import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 输入控件
class TextFieldTestPage extends BasePageWidget {
  const TextFieldTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _TextFieldTestPageState();
}

class _TextFieldTestPageState extends BasePageState {
  @override
  String pageTitle = "TextField输入框组件";

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        // 默认样式
        const TextField(),
        const SizedBox(height: 20),
        const TextField(
          decoration: InputDecoration(
            // 设置hint值
            hintText: "请输入姓名",
            // 设置输入框的边框
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        const TextField(
          // 设置输入框最大行数
          maxLines: 4,
          decoration: InputDecoration(
            hintText: "多行文本框",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            // 设置 labelText 属性，则未输入时，labelText为hint值，输入时为标题，会移动到输入框顶部
            labelText: "用户名",
          ),
        ),
        const SizedBox(height: 20),
        const TextField(
          // 输入框为密码样式
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "密码",
          ),
        ),
        const SizedBox(height: 20),
        const TextField(
          decoration: InputDecoration(
            hintText: "输入框前增加图标",
            icon: Icon(Icons.people),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(
            hintText: "监听输入的内容",
          ),
          onChanged: (value) {
            print("输入的内容是：$value");
          },
        ),
      ],
    );
  }

  @override
  void initData() {}
}
