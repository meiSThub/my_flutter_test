import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/router/page_num.dart';

/// Card 卡片布局组件，可以实现带阴影的卡片效果
class CardWidgetNormalPage extends BasePageWidget {
  const CardWidgetNormalPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _CardWidgetNormalPageState();
}

class _CardWidgetNormalPageState extends BasePageState {
  @override
  String pageTitle = "Card卡片组件基础使用";

  @override
  Widget buildContentView() {
    return Container(
      width: 300,
      height: 300,
      margin: const EdgeInsets.all(50),
      padding: const EdgeInsets.all(10),
      child: Card(
        // 卡片背景
        color: Colors.green,
        // 阴影颜色
        shadowColor: Colors.red,
        // 阴影大小
        elevation: 20,
        // 指定卡片的形状
        shape: const RoundedRectangleBorder(
            // 卡片的边框
            side: BorderSide(color: Colors.purple, width: 2),
            // 卡片圆角
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(40))),
        child: Column(
          children: const [
            ListTile(
              title: Text(
                "张三",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              subtitle: Text(
                "高级工程师",
                style: TextStyle(color: Colors.black38, fontSize: 20),
              ),
            ),
            ListTile(title: Text("电话：xxx")),
            ListTile(title: Text("地址：xxx")),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("Card 卡片布局组件，可以实现带阴影的卡片效果,还可以自定义卡片的形状"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initData() {}
}
