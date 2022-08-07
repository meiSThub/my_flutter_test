import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/router/page_num.dart';

/// AspectRatio 宽高比容器，可以指定容器的宽高比，则其子View会按照该比例，铺满整个容器
class CardWidgetHomePage extends BasePageWidget {
  const CardWidgetHomePage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _CardWidgetHomePageState();
}

class _CardWidgetHomePageState extends BasePageState {
  @override
  String pageTitle = "AspectRatio宽高比容器组件";

  @override
  Widget buildContentView() {
    return ListView(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.cardWidgetNormalPage);
          },
          child: const Text("Card基础使用"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.cardWidgetAdvancedPage);
          },
          child: const Text("Card实现图文列表"),
        ),
      ],
    );
  }

  @override
  void initData() {}
}
