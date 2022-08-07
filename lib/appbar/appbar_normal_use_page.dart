import 'package:flutter/material.dart';

// AppBar组件，的基础使用
class AppbarNormalUsedPage extends StatefulWidget {
  const AppbarNormalUsedPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AppbarNormalUsedPageState();
}

class _AppbarNormalUsedPageState extends State {
  String pageTitle = "Appbar基础使用";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
        // 修改左侧的图片
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.menu),
        ),
        // 修改导航栏的颜色
        backgroundColor: Colors.red,
        // 标题是否居中显示
        centerTitle: true,
        // 给导航栏右侧添加控件
        actions: const [
          Icon(Icons.search),
          Icon(Icons.settings),
        ],
      ),
      body: const Center(
        child: Text("AppBar 的基本使用"),
      ),
    );
  }
}
