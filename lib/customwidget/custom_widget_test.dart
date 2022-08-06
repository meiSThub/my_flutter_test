import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 自定义组件
class CustomWidgetTestPage extends BasePageWidget {
  const CustomWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => CustomWidgetTestPageState();
}

class CustomWidgetTestPageState extends BasePageState {
  @override
  String pageTitle = "自定义(Icon)组件";

  @override
  Widget buildContentView() {
    return const Center(
      child: IconWidget(
        Icons.home,
        color: Colors.green,
        size: 100,
      ),
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}

/// 自定义 带背景的Icon 组件
/// 这样就实现了一个带有背景，可以指定大小和图标的自定义 Icon 组件
class IconWidget extends StatelessWidget {
  final IconData _icon;
  final double size;
  final Color color;

  // Prefer declaring const constructors on `@immutable` classes
  // 命名参数不能是私有的
  // 不可变的类的构造函数，通常都建议用 const 修饰
  const IconWidget(this._icon,
      {this.size = 32, this.color = Colors.red, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        child: Icon(
          _icon,
          size: size,
          color: Colors.white,
        ));
  }
}
