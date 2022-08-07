import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// Container 容器组件，Container组件 相当于 h5 中的 div 标签，表示一个块
/// Container 在最外层的时候，默认铺满整个屏幕
class ContainerWidgetTestPage extends BasePageWidget {
  const ContainerWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _ContainerWidgetTestPageState();
}

class _ContainerWidgetTestPageState
    extends BasePageState<ContainerWidgetTestPage> {
  @override
  String pageTitle = "Container容器组件";

  @override
  Widget buildContentView() {
    return Center(
      child: Container(
        // Container 的子View
        child: const Text("Container 容器, 在最外层的时候，默认铺满整个屏幕，还可以指定大小"),
        // Container 的宽度
        width: 300,
        // Container 高度
        height: 300,
        // Container 的内边距
        padding: const EdgeInsets.all(10),
        // Container 的外边距
        margin: const EdgeInsets.fromLTRB(100, 0, 10, 0),
        // Container 装饰
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            // 边框粗细
            width: 2,
            // 边框颜色
            color: Colors.red,
          ),
          // 边框圆角大小
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        // Container 内容的对齐方式
        alignment: Alignment.center,
        // 转换操作，根据举证来转换,可以为负值
        transform: Matrix4.rotationZ(0.2),
      ),
    );
  }

  @override
  void initData() {}
}
