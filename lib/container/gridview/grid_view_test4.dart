import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// GridView 网格列表组件
class GridViewTestPage4 extends BasePageWidget {
  const GridViewTestPage4({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => GridViewTestPage4State();
}

class GridViewTestPage4State extends BasePageState<GridViewTestPage4> {
  @override
  String pageTitle = "GridView水平动态态列表，builder方式";

  final List<Map<String, String>> _dataList = [];

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
    return SizedBox(
      // 因为GridView没有办法直接设置高度，所以这里通过一个Container容器包裹一下，给外层容器设置高度，从而实现给GridView设置高度
      height: 400,
      child: GridView.builder(
        /// 水平网格布局
        scrollDirection: Axis.horizontal,
        // 内边距
        padding: const EdgeInsets.all(10),
        // 布局参数设置
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // 水平布局，则这就表示有两行
          crossAxisCount: 2,
          // item 水平间距
          crossAxisSpacing: 10,
          // item 垂直间距
          mainAxisSpacing: 10,
        ),
        itemCount: _dataList.length,
        itemBuilder: (context, index) {
          return _buildItemView(_dataList[index]);
        },
      ),
    );
  }

  /// 动态创建itemView
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
