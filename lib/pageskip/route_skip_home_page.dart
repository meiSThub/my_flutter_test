import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/router/page_num.dart';

/// 路由跳转首页
class RouteSkipHomePage extends BasePageWidget {
  const RouteSkipHomePage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _RouteSkipHomePageState();
}

class _RouteSkipHomePageState extends BasePageState {
  @override
  String pageTitle = "路由跳转首页";

  @override
  Widget buildContentView() {
    return ListView(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.normalRouteSkipTestPage);
          },
          child: const Text("普通路由跳转与传参"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.namedRouteSkipTestPage);
          },
          child: const Text("命名路由跳转与传参数"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.replaceRouteSkipTestPage);
          },
          child: const Text("替换路由方式，进行页面跳转"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.back2RootTestPage);
          },
          child: const Text("通过路由，回退到指定的页面"),
        ),
      ],
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}
