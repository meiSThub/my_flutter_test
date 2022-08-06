import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// GridView 网格列表组件
class GridViewTestPage1 extends BasePageWidget {
  const GridViewTestPage1({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => GridViewTestPage1State();
}

class GridViewTestPage1State extends BasePageState<GridViewTestPage1> {
  @override
  String pageTitle = "GridView垂直静态列表，count方式";

  @override
  Widget buildContentView() {
    return GridView.count(
      // item列数
      crossAxisCount: 3,
      // item水平间距
      crossAxisSpacing: 10,
      // item垂直间距
      mainAxisSpacing: 10,
      // 宽高比，w/h=0.8,在网格布局中，item列数固定的情况下，item的宽度也就固定了，通过该比例就可以算出 高度
      // 即 h=w/0.8,所以 childAspectRatio值越小，高度越大，默认是1，即宽高相等。
      childAspectRatio: 2,
      // GridView内边距
      padding: const EdgeInsets.all(10),
      // GridView 子View 列表
      children: [
        // item1
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2),
            color: Colors.blue,
          ),
          child: const Center(
            child: Text("标题1"),
          ),
        ),
        // item2
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2),
            color: Colors.blue,
          ),
          child: const Center(
            child: Text("标题2"),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2),
            color: Colors.blue,
          ),
          child: const Center(
            child: Text("标题3"),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2),
            color: Colors.blue,
          ),
          child: const Center(
            child: Text("标题4"),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2),
            color: Colors.blue,
          ),
          child: const Center(
            child: Text("标题5"),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2),
            color: Colors.blue,
          ),
          child: const Center(
            child: Text("标题6"),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2),
            color: Colors.blue,
          ),
          child: const Center(
            child: Text("标题7"),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2),
            color: Colors.blue,
          ),
          child: const Center(
            child: Text("标题8"),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2),
            color: Colors.blue,
          ),
          child: const Center(
            child: Text("标题9"),
          ),
        ),
      ],
    );
  }

  @override
  void initData() {}
}
