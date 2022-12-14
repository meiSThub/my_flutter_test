import 'package:flutter/material.dart';

/// 页面基础组件
abstract class BasePageWidget extends StatefulWidget {
  const BasePageWidget({Key? key}) : super(key: key);

  @override
  BasePageState createState() => getState();

  /// 创建页面的State
  BasePageState getState();
}

/// 页面的基础结构
abstract class BasePageState<T extends BasePageWidget> extends State<T> {
  /// 页面标题
  abstract String pageTitle;

  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    return hasAppBar()
        ? Scaffold(
            appBar: AppBar(
              title: Text(pageTitle),
            ),
            body: buildContentView(),
          )
        : Scaffold(
            body: buildContentView(),
          );
  }

  /// 是否有导航栏
  /// true：有导航栏，false，没有导航栏
  bool hasAppBar() {
    return true;
  }

  ///  初始化数据
  void initData();

  /// 构建页面内容View
  Widget buildContentView();
}
