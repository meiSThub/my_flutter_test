import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/bean/page_route_bean.dart';
import 'package:my_flutter_test/router/page_num.dart';

/// 容器组件 首页，
class ContainerHomePage extends BasePageWidget {
  const ContainerHomePage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _ContainerTestPageState();
}

/// Container 容器组件页面状态
class _ContainerTestPageState extends BasePageState<ContainerHomePage> {
  @override
  String pageTitle = "容器组件";

  get _dataList => _buildDataList();

  List<PageRouteBean> _buildDataList() {
    return [
      PageRouteBean("Container组件", PageNum.containerWidget),
      PageRouteBean("ListView静态垂直列表", PageNum.listViwTestPage1),
      PageRouteBean("ListView静态水平列表", PageNum.listViwTestPage2),
      PageRouteBean("ListView动态垂直列表", PageNum.listViwTestPage3),
      PageRouteBean("ListView动态垂直列表，builder方式", PageNum.listViwTestPage4),
      PageRouteBean("GridView垂直静态列表，count方式", PageNum.gridViewTestPage1),
      PageRouteBean("GridView垂直动态列表，count方式", PageNum.gridViewTestPage2),
      PageRouteBean("GridView垂直静态列表，builder方式", PageNum.gridViewTestPage3),
      PageRouteBean("GridView水平动态列表，builder方式", PageNum.gridViewTestPage4),
      PageRouteBean("Padding组件", PageNum.paddingWidgetTestPage),
      PageRouteBean("Row水平线性组件", PageNum.rowWidgetTestPage),
      PageRouteBean("Column垂直线性组件", PageNum.columnWidgetTestPage),
      PageRouteBean("Expanded按照权重划分父容器空间", PageNum.expandedWidgetTestPage),
      PageRouteBean("Expanded ，Row 和 Column 混合使用，实现一个一拖二的楼层",
          PageNum.expandedRowColumnMixPage),
    ];
  }

  @override
  Widget buildContentView() {
    return ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: _dataList.length,
        itemBuilder: (context, index) => _buildItemView(_dataList[index]));
  }

  Widget _buildItemView(PageRouteBean item) {
    return ElevatedButton(
      child: Text(item.name),
      onPressed: () => Navigator.pushNamed(context, item.routeUrl),
    );
  }

  @override
  void initData() {}
}
