import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// GridView 网格列表组件
class GridViewTestPage2 extends BasePageWidget {
  const GridViewTestPage2({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => GridViewTestPage2State();
}

class GridViewTestPage2State extends BasePageState<GridViewTestPage2> {
  @override
  String pageTitle = "GridView垂直动态态列表，count方式";

  final List<Widget> _itemViewList = [];

  @override
  void initData() {
    //  根据数据列表，创建指定数量的itemView列表
    for (int i = 0; i < 30; i++) {
      _itemViewList.add(_buildItemView(i));
    }
  }

  /// 创建itemView
  Widget _buildItemView(int index) {
    return Container(
      // 容器装饰
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red, width: 2),
        color: Colors.blue,
      ),
      child: Center(
        // 垂直布局，相当于 LinearLayout ，即垂直线性布局
        child: Column(
          children: [
            Image.asset("assets/images/ic_meinv.png"),
            // 使用 SizedBox ，当作间距
            const SizedBox(height: 10),
            Text("标题${index + 1}"),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildContentView() {
    /// GridView.count 根据返回的数据，一次性创建所有的itemView
    /// 弊端：数据量比较大的时候，itemView的创建会比较耗时，也耗内存
    /// 优化：可以使用 builder的方式创建 GridView。
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: const EdgeInsets.all(10),
      children: _itemViewList,
    );
  }
}
