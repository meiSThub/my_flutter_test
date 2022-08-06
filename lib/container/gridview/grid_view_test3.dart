import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// GridView 网格列表组件
class GridViewTestPage3 extends BasePageWidget {
  const GridViewTestPage3({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => GridViewTestPage3State();
}

class GridViewTestPage3State extends BasePageState<GridViewTestPage3> {
  @override
  String pageTitle = "GridView垂直静态态列表，builder方式";

  List<Map<String, String>> _dataList = [];

  @override
  void initData() {
    for (int i = 0; i < 30; i++) {
      _dataList.add({
        "title": "item标题${i + 1}",
        "imageUrl": "assets/images/ic_meinv.png",
      });
    }
  }

  @override
  Widget buildContentView() {
    return GridView.builder(
        // 与 count方法创建GridView的方式不同的是，builder方法没有直接提供设置 item 列数，间距
        // 的参数，而是通过一个delegate（代理）来间接的设置
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: const EdgeInsets.all(10),
        // itemView 的数量
        itemCount: _dataList.length,
        // itemBuilder 是 typedef IndexedWidgetBuilder = Widget Function(BuildContext context, int index); 函数类型
        // 所以这里可以直接以匿名函数的方式实现该方法
        itemBuilder: (context, index) {
          // 这个itemBuilder 就是用来创建itemView的
          return _buildItemView(_dataList[index]);
        });
  }

  /// 动态创建itemView，
  Widget _buildItemView(Map item) {
    return Container(
      // 容器装饰
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 2),
        color: Colors.blue,
      ),
      child: Center(
        // 垂直布局，相当于 LinearLayout ，即垂直线性布局
        child: Column(
          children: [
            Image.asset(item["imageUrl"]),
            // 使用 SizedBox ，当作间距
            const SizedBox(height: 10),
            Text(item['title']),
          ],
        ),
      ),
    );
  }
}
