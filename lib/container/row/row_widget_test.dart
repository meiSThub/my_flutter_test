import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/customwidget/custom_icon_widget.dart';

/// Row 水平线性布局组件
class RowWidgetTestPage extends BasePageWidget {
  const RowWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => RowWidgetTestPageState();
}

class RowWidgetTestPageState extends BasePageState<RowWidgetTestPage> {
  @override
  String pageTitle = "Row水平线性布局组件";

  @override
  Widget buildContentView() {
    return Container(
      height: 300,
      color: Colors.deepPurple,
      child: Row(
        // 设置子View的水平对齐方式，如：MainAxisAlignment.spaceEvenly ，子View均匀分开，间距相等
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // 子View 在容器的垂直方向上的对齐方式
        crossAxisAlignment: CrossAxisAlignment.start,
        // 水平线性布局Row的 子View 列表
        children: const [
          IconWidget(
            Icons.search,
            color: Colors.red,
            size: 100,
          ),
          IconWidget(
            Icons.home,
            color: Colors.orange,
            size: 100,
          ),
          IconWidget(
            Icons.select_all,
            color: Colors.green,
            size: 100,
          ),
        ],
      ),
    );
  }

  @override
  void initData() {}
}
