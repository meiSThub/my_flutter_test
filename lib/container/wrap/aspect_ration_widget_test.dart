import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// Wrap 流布局组件，在默认先水平方向排列，不足则换行
class WrapWidgetTestPage extends BasePageWidget {
  const WrapWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _WrapWidgetTestPageState();
}

class _WrapWidgetTestPageState extends BasePageState {
  @override
  String pageTitle = "AspectRatio宽高比容器组件";

  @override
  Widget buildContentView() {
    return Center(
      child: Container(
        color: Colors.blueGrey,
        width: 400,
        height: 400,
        // AspectRatio 默认铺满整个容器
        child: Wrap(
          // 水平间距
          spacing: 10,
          // 垂直间距
          runSpacing: 10,
          // 水平对齐方式,右对齐
          alignment: WrapAlignment.end,
          // 垂直对齐方式
          runAlignment: WrapAlignment.center,
          // 布局方向，默认为水平方向
          direction: Axis.horizontal,
          // 子View列表
          children: [
            _buildItemView("斗破苍穹"),
            _buildItemView("全职高手"),
            _buildItemView("大头儿子小头爸爸"),
            _buildItemView("昨天今天明天"),
            _buildItemView("神墓"),
            _buildItemView("遮天"),
          ],
        ),
      ),
    );
  }

  Widget _buildItemView(String text) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(5)),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  void initData() {}
}
