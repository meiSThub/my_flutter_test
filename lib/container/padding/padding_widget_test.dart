import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 当某些组件没有padding属性，但又希望设置一个padding的时候，就可以使用 Padding 组件，
/// 包裹该组件，并设置padding 值，这样就可以实现为没有padding属性的组件增加padding值了。
class PaddingWidgetTestPage extends BasePageWidget {
  const PaddingWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => PaddingWidgetTestPageState();
}

class PaddingWidgetTestPageState extends BasePageState<PaddingWidgetTestPage> {
  @override
  String pageTitle = "Padding组件";

  @override
  Widget buildContentView() {
    return Container(
      width: 300,
      height: 300,
      color: Colors.green,
      child: Center(
        // Center组件没有padding属性，为了能够增加padding值，所以这里使用 Padding组件包裹
        child: Padding(
          padding: const EdgeInsets.all(10),
          // 这个Container容器，虽然设置的宽高与外层的Container容器一样，但因为Padding 组件设置了10px的内间距
          // 所以无法填充满
          child: Container(
            width: 300,
            height: 300,
            color: Colors.amber,
            child: Column(
              children: [
                Image.asset('assets/images/ic_meinv.png'),
                // 使用 SizedBox ，当作间距
                const SizedBox(height: 10),
                const Text("标题"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}
