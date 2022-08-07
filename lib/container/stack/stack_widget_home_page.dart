import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/customwidget/custom_icon_widget.dart';
import 'package:my_flutter_test/router/page_num.dart';

/// Stack 层级布局组件，相当于 FrameLayout 和 RelativeLayout
class StackWidgetHomePage extends BasePageWidget {
  const StackWidgetHomePage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => StackWidgetHomePageState();
}

class StackWidgetHomePageState extends BasePageState<StackWidgetHomePage> {
  @override
  String pageTitle = "Stack相关容器组件首页";

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.stackWidgetTestPage);
          },
          child: const Text("Stack层级布局组件"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.stackAlignWidgetTestPage);
          },
          child: const Text("Stack搭配Align层级布局"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.stackPositionedWidgetTestPage);
          },
          child: const Text("Stack搭配Positioned层级布局"),
        ),
      ],
    );
  }

  @override
  void initData() {}
}
