import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/router/page_num.dart';

// AppBar组件，的基础使用
class AppbarHomePage extends BasePageWidget {
  const AppbarHomePage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _AppbarHomePageState();
}

class _AppbarHomePageState extends BasePageState {
  @override
  String pageTitle = "Appbar基础使用";

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.appbarNormalUsedPage);
          },
          child: const Text("AppBar的基础使用"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.appbarAddTopTabsTestPage);
          },
          child: const Text("AppBar的添加顶部tab"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.appbarAddTopTabsTestPage2);
          },
          child: const Text("在有导航栏的页面添加tab"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.appbarAddTopTabsTestPage3);
          },
          child: const Text("在有导航栏的页面添加tab,解决会出现多个导航栏的问题"),
        ),
      ],
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}
