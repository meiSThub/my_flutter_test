import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/router/page_num.dart';

/// ListView 首页
class ListViwHomePage extends BasePageWidget {
  const ListViwHomePage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => ListViwHomePageState();
}

class ListViwHomePageState extends BasePageState<ListViwHomePage> {
  @override
  String pageTitle = "ListView首页";

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        ElevatedButton(
          child: const Text("ListView静态垂直列表"),
          onPressed: () {
            Navigator.pushNamed(context, PageNum.listViwTestPage1);
          },
        ),
        ElevatedButton(
          child: const Text("ListView静态水平列表"),
          onPressed: () {
            Navigator.pushNamed(context, PageNum.listViwTestPage2);
          },
        ),
        ElevatedButton(
          child: const Text("ListView动态垂直列表"),
          onPressed: () {
            Navigator.pushNamed(context, PageNum.listViwTestPage3);
          },
        ),
        ElevatedButton(
          child: const Text("ListView动态垂直列表，builder方式"),
          onPressed: () {
            Navigator.pushNamed(context, PageNum.listViwTestPage4);
          },
        ),
      ],
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}
