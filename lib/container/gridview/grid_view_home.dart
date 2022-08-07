import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/bean/page_route_bean.dart';
import 'package:my_flutter_test/router/page_num.dart';

/// GridView 网格列表组件
class GridViewHomeTestPage extends BasePageWidget {
  const GridViewHomeTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => GridViewHomeTestPageState();
}

class GridViewHomeTestPageState extends BasePageState<GridViewHomeTestPage> {
  @override
  String pageTitle = "GridView首页";

  final List<PageRouteBean> _dataList = [
    PageRouteBean("GridView垂直静态列表，count方式", PageNum.gridViewTestPage1),
    PageRouteBean("GridView垂直动态列表，count方式", PageNum.gridViewTestPage2),
    PageRouteBean("GridView垂直静态列表，builder方式", PageNum.gridViewTestPage3),
    PageRouteBean("GridView水平动态列表，builder方式", PageNum.gridViewTestPage4),
  ];

  @override
  void initData() {}

  @override
  Widget buildContentView() {
    return ListView.builder(
      // 内边距
      padding: const EdgeInsets.all(10),
      itemCount: _dataList.length,
      itemBuilder: (context, index) {
        return _buildItemView(_dataList[index]);
      },
    );
  }

  /// 动态创建itemView
  Widget _buildItemView(PageRouteBean item) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, item.routeUrl);
      },
      child: Text(item.name),
    );
  }
}
