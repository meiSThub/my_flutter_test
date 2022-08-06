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
      PageRouteBean("Container组件", PageNum.containersHome),
      PageRouteBean("Container组件", PageNum.containersHome),
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
