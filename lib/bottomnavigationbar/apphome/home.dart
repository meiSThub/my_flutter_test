import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 首页
class HomePage extends BasePageWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _HomePageState();
}

class _HomePageState extends BasePageState {
  @override
  String pageTitle = "首页";

  @override
  Widget buildContentView() {
    return const Center(
      child: Text("首页内容"),
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}
