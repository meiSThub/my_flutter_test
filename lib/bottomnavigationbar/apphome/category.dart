import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 首页
class CategoryPage extends BasePageWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _CategoryPageState();
}

class _CategoryPageState extends BasePageState {
  @override
  String pageTitle = "分类";

  @override
  Widget buildContentView() {
    return const Center(
      child: Text("分类页面内容"),
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}
