import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/customwidget/custom_icon_widget.dart';

/// Stack 层级布局组件，相当于 FrameLayout 和 RelativeLayout
class StackWidgetTestPage extends BasePageWidget {
  const StackWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => StackWidgetTestPageState();
}

class StackWidgetTestPageState extends BasePageState<StackWidgetTestPage> {
  @override
  String pageTitle = "Stack层级布局组件";

  @override
  Widget buildContentView() {
    return Center(
      child: Stack(
        // Stack 容器中所有子View的对齐方式
        // 这里指所有的View都在容器中剧中显示
        // 则 Text 显示在Image上，Image在 Container容器上，且 Text ，Image和 Container都是剧中显示的
        // alignment: Alignment.center,
        // Alignment(0, 0) 就相当于 Alignment.center，取值范围[-1,1]
        alignment: const Alignment(0, 0),
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.deepPurple,
          ),
          Image.asset(
            "assets/images/ic_meinv.png",
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          const Text(
            "上层文案",
            style: TextStyle(backgroundColor: Colors.red, fontSize: 30),
          )
        ],
      ),
    );
  }

  @override
  void initData() {}
}
