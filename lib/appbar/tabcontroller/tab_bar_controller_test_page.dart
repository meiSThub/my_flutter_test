import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 如何在已经有导航栏的页面增加顶部Tab
/// 通过TabController实现顶部tab
/// 1. 让State 类实现 SingleTickerProviderStateMixin 类
/// 2. 定义TabController变量，并在 State 初始化的时候，实例化 TabController
/// 3. 在TabBar 和 TabBarView 中，都需要配置创建好的 TabController 对象
class TabBarControllerTestPage extends StatefulWidget {
  const TabBarControllerTestPage({Key? key}) : super(key: key);

  // BasePageState<BasePageWidget> getState() => _TabBarControllerTestPageState();

  @override
  State<StatefulWidget> createState() => _TabBarControllerTestPageState();
}

///
class _TabBarControllerTestPageState extends State
    with SingleTickerProviderStateMixin {
  // 定义一个 TabController 对象
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // length：tab的数量
    // vsync 就是 State 类实现的  SingleTickerProviderStateMixin 类
    _tabController = TabController(length: 2, vsync: this);
    // 监听tab的选中事件
    _tabController.addListener(() {
      print("select tab index=${_tabController.index}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TabController 实现顶部tab"),
        bottom: TabBar(
          tabs: const [
            Text("推荐"),
            Text("热门"),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: [
          _buildTabPage(0),
          _buildTabPage(1),
        ],
        controller: _tabController,
      ),
    );
  }

  Widget _buildTabPage(int index) {
    return ListView(
      children: [
        ListTile(title: Text("这个第${index + 1}个tab")),
        ListTile(title: Text("这个第${index + 1}个tab")),
        ListTile(title: Text("这个第${index + 1}个tab")),
        ListTile(title: Text("这个第${index + 1}个tab")),
        ListTile(title: Text("这个第${index + 1}个tab")),
        ListTile(title: Text("这个第${index + 1}个tab")),
        ListTile(title: Text("这个第${index + 1}个tab")),
        ListTile(title: Text("这个第${index + 1}个tab")),
        ListTile(title: Text("这个第${index + 1}个tab")),
        ListTile(title: Text("这个第${index + 1}个tab")),
      ],
    );
  }
}
