import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// AspectRatio 宽高比容器，可以指定容器的宽高比，则其子View会按照该比例，铺满整个容器
class AspectRatioWidgetTestPage extends BasePageWidget {
  const AspectRatioWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => AspectRatioWidgetTestPageState();
}

class AspectRatioWidgetTestPageState extends BasePageState {
  @override
  String pageTitle = "AspectRatio宽高比容器组件";

  @override
  Widget buildContentView() {
    return Center(
      child: Container(
        color: Colors.red,
        width: 400,
        // AspectRatio 默认铺满整个容器
        child: AspectRatio(
          aspectRatio: 2.0 / 1,
          child: Container(
            color: Colors.green,
            child: const Center(
                child: Text(
              """
AspectRatio 默认铺满外层容器，根据子View的高度自适应。如果外层容器的宽高都是固定的，
则AspectRatio的宽高比会失效，即AspectRatio会直接铺满整个外层容器。
根据AspectRatio所指定的宽高比，就可以算出子View的高度。当前绿色区域，宽高比为2：1
              """,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
          ),
        ),
      ),
    );
  }

  @override
  void initData() {}
}
