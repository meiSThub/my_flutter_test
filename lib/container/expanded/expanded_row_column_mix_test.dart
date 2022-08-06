import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/customwidget/custom_icon_widget.dart';

/// 使用Expanded，Row 和 Column 实现一个 一拖二的混合布局
class ExpandedRowColumnMixPage extends BasePageWidget {
  const ExpandedRowColumnMixPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => ExpandedRowColumnMixPageState();
}

class ExpandedRowColumnMixPageState
    extends BasePageState<ExpandedRowColumnMixPage> {
  @override
  String pageTitle = "Expanded、Row和Column混合使用";

  @override
  Widget buildContentView() {
    return Container(
      color: Colors.deepPurple,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          // 1.为了让第一张大图能够占满屏幕宽度，所以这里用一个Row和Expanded容器包裹，即可占满屏幕宽度
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  "assets/images/ic_meinv.png",
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.network(
                  "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
                  fit: BoxFit.cover,
                  height: 180,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 180,
                    child: ListView(
                      children: [
                        Image.asset(
                          "assets/images/ic_meinv.png",
                          fit: BoxFit.cover,
                          height: 85,
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          "assets/images/ic_meinv.png",
                          fit: BoxFit.cover,
                          height: 85,
                        ),
                      ],
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }

  @override
  void initData() {}
}
