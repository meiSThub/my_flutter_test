import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 普通页面路由跳转
class NormalRouteSkipTestPage extends BasePageWidget {
  const NormalRouteSkipTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _NormalRouteSkipTestPageState();
}

class _NormalRouteSkipTestPageState extends BasePageState {
  @override
  String pageTitle = "普通路由跳转";

  @override
  Widget buildContentView() {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            // 这就是普通的页面路由跳转，如果需要传递参数，则直接通过页面的构造函数传参就可以来
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => _SecondPage(content: "从上个页面传递过来的参数"),
              ),
            );
          },
          child: const Text("跳转子页面")),
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}

class _SecondPage extends StatelessWidget {
  String? content;

  // 通过构造函数传参
  _SecondPage({this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("子页面"),
      ),
      body: Center(
        child: Text(content ?? "第二个页面"),
      ),
    );
  }
}
