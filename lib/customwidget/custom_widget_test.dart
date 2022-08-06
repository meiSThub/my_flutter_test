import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

import 'custom_icon_widget.dart';

/// 自定义组件
class CustomWidgetTestPage extends BasePageWidget {
  const CustomWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => CustomWidgetTestPageState();
}

class CustomWidgetTestPageState extends BasePageState {
  @override
  String pageTitle = "自定义(Icon)组件";

  @override
  Widget buildContentView() {
    return const Center(
      child: IconWidget(
        Icons.home,
        color: Colors.green,
        size: 100,
      ),
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}
