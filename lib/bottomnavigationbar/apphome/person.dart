import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 首页
class PersonPage extends BasePageWidget {
  const PersonPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _PersonPageState();
}

class _PersonPageState extends BasePageState {
  @override
  String pageTitle = "个人中心";

  @override
  Widget buildContentView() {
    return const Center(
      child: Text("个人中心页面内容"),
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}
