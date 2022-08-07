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
      PageRouteBean("ListView首页", PageNum.listViwHomePage),
      PageRouteBean("GridView首页", PageNum.gridViewHomeTestPage),
      PageRouteBean("Padding组件", PageNum.paddingWidgetTestPage),
      PageRouteBean("Row水平线性组件", PageNum.rowWidgetTestPage),
      PageRouteBean("Column垂直线性组件", PageNum.columnWidgetTestPage),
      PageRouteBean("Expanded按照权重划分父容器空间", PageNum.expandedWidgetTestPage),
      PageRouteBean("Expanded ，Row 和 Column 混合使用，实现一个一拖二的楼层",
          PageNum.expandedRowColumnMixPage),
      PageRouteBean("Stack相关容器组件首页", PageNum.stackWidgetHomePage),
      PageRouteBean("AspectRatio宽高比布局", PageNum.aspectRatioWidgetTestPage),
      PageRouteBean("Card卡片布局组件", PageNum.cardWidgetHomePage),
      PageRouteBean("Wrap流布局组件", PageNum.wrapWidgetTestPage),
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
