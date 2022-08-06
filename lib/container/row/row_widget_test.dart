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
        // 针对水平方向的线性布局组件来说，主轴就是水平方向，次轴就是垂直方向
        // mainAxisAlignment 主轴设置的就是水平方向的对齐方式
        // crossAxisAlignment：次轴，设置的就是垂直方向的对齐方式
        // 主轴：设置子View的水平对齐方式，如：MainAxisAlignment.spaceEvenly ，子View均匀分开，间距相等
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // 次轴：子View 在容器的垂直方向上的对齐方式
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
