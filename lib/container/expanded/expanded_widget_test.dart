import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/customwidget/custom_icon_widget.dart';

/// Expanded 按照权重，平分父容器的剩余空间
class ExpandedWidgetTestPage extends BasePageWidget {
  const ExpandedWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => ExpandedWidgetTestPageState();
}

class ExpandedWidgetTestPageState
    extends BasePageState<ExpandedWidgetTestPage> {
  @override
  String pageTitle = "Expanded按照权重划分父容器空间";

  @override
  Widget buildContentView() {
    return Container(
      height: 300,
      color: Colors.deepPurple,
      child: Row(
        // 子View 总共把父容器的空间分为了：1+2+1=4份
        // 其中第一个子View占 1/4
        // 第二个子View占用 2/4
        // 第三个子View占用 1/4
        children: const [
          Expanded(
            // 占父容器空间的1份
            flex: 1,
            child: IconWidget(
              Icons.search,
              color: Colors.red,
              size: 100,
            ),
          ),
          Expanded(
            // 占父容器空间的2份
            flex: 2,
            child: IconWidget(
              Icons.home,
              color: Colors.orange,
              size: 100,
            ),
          ),
          Expanded(
            // 占父容器空间的1份
            flex: 1,
            child: IconWidget(
              Icons.select_all,
              color: Colors.green,
              size: 100,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initData() {}
}
