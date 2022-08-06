import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/customwidget/custom_icon_widget.dart';

/// Column 垂直线性布局组件
class ColumnWidgetTestPage extends BasePageWidget {
  const ColumnWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => ColumnWidgetTestPageState();
}

class ColumnWidgetTestPageState extends BasePageState<ColumnWidgetTestPage> {
  @override
  String pageTitle = "Column垂直线性布局组件";

  @override
  Widget buildContentView() {
    return Container(
      height: 500,
      width: 400,
      color: Colors.deepPurple,
      child: Column(
        // 针对垂直方向的线性布局组件来说，主轴就是垂直方向，次轴就是水平方向
        // mainAxisAlignment： 主轴，设置的就是垂直方向的对齐方式
        // crossAxisAlignment：次轴，设置的就是水平方向的对齐方式
        // 主轴：设置子View在容器垂直方向上的对齐方式，如：MainAxisAlignment.spaceEvenly ，子View均匀分开，间距相等
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // 次轴：设置 子View 在容器的水平方向上的对齐方式
        crossAxisAlignment: CrossAxisAlignment.center,
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
