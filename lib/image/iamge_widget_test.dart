import 'package:flutter/material.dart';

///  图片测试类
class ImageTestPage extends StatelessWidget {
  const ImageTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("图片组件使用")),
      body: const ImagePageContent(),
    );
  }
}

/// 内容
class ImagePageContent extends StatelessWidget {
  const ImagePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("网络图片"),
      ],
    );
  }
}
