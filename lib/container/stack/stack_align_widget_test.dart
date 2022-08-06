import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/customwidget/custom_icon_widget.dart';

/// Stack 层级布局组件，相当于 FrameLayout 和 RelativeLayout
/// Stack 搭配 Align组件，实现Stack 里面的子View 精准对齐，即通过 Align 指定 Stack中的子View 显示在 Stack中的具体位置
class StackAlignWidgetTestPage extends BasePageWidget {
  const StackAlignWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => StackAlignWidgetTestPageState();
}

class StackAlignWidgetTestPageState
    extends BasePageState<StackAlignWidgetTestPage> {
  @override
  String pageTitle = "Stack搭配Align实现层级布局";

  @override
  Widget buildContentView() {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.deepPurple,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/ic_meinv.png",
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: IconWidget(Icons.home, size: 40, color: Colors.green),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: IconWidget(
                Icons.settings_applications,
                size: 32,
                color: Colors.red,
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "美女",
                style: TextStyle(backgroundColor: Colors.red, fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initData() {}
}
