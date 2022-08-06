import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/customwidget/custom_icon_widget.dart';

/// Stack 层级布局组件，相当于 FrameLayout 和 RelativeLayout
/// Stack 搭配 Positioned组件，实现Stack 里面的子View 精准对齐，即通过 Positioned 指定
/// Stack中的子View 显示在 Stack中的具体位置
class StackPositionedWidgetTestPage extends BasePageWidget {
  const StackPositionedWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() =>
      StackPositionedWidgetTestPageState();
}

class StackPositionedWidgetTestPageState
    extends BasePageState<StackPositionedWidgetTestPage> {
  @override
  String pageTitle = "Stack搭配Positioned实现层级布局";

  @override
  Widget buildContentView() {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.deepPurple,
        child: Stack(
          children: [
            Positioned(
              // 距离容器左边0像素
              left: 0,
              // 距离容器顶部0像素
              top: 0,
              child: Image.asset(
                "assets/images/ic_meinv.png",
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
              // 距离容器左边10像素
              left: 10,
              // 距离容器顶部0像素
              top: 0,
              child: IconWidget(Icons.home, size: 40, color: Colors.green),
            ),
            const Positioned(
              top: 0,
              // 距离容器右边10像素
              right: 10,
              child: IconWidget(
                Icons.settings_applications,
                size: 32,
                color: Colors.red,
              ),
            ),
            // 让Text底部居中显示，并且距离底部20像素
            const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text(
                    "美女",
                    style: TextStyle(backgroundColor: Colors.red, fontSize: 30),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  @override
  void initData() {}
}
