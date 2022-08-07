import 'package:flutter/material.dart';

/// AppBar,增加顶部tab，类似于头条的顶部分类
/// 顶部Tab，也需要在AppBar中配置
/// 实现步骤：
/// 1.在Scaffold组件外层，增加DefaultTabController组件，并指定tab的数量
/// 2.在AppBar中，增加bottom属性，并赋值TabBar
/// 3.把Scaffold组件的body属性，赋值为TabBarView，并为TabBarView添加子View，即Tab选中时对应的页面
///   数量需要与TabBar的子View数量相等，
class AppbarAddTopTabsTestPage extends StatefulWidget {
  const AppbarAddTopTabsTestPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AppbarAddTopTabsTestPageState();
}

class _AppbarAddTopTabsTestPageState extends State {
  String pageTitle = "Appbar增加顶部tab";

  @override
  Widget build(BuildContext context) {
    // 1.使用DefaultTabController包裹Scaffold
    return DefaultTabController(
      // 2.设置顶部tab的数量
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(pageTitle),
          // 3.配置顶部TabBar
          bottom: const TabBar(
            tabs: [
              Tab(text: "热门"),
              Tab(text: "推荐"),
            ],
            // 指示器的颜色
            indicatorColor: Colors.red,
            // 指示器的大小，这里设置成与文字一样宽
            indicatorSize: TabBarIndicatorSize.label,
            // 指示器的高度
            indicatorWeight: 10,
            // tab选中时，文字的颜色
            labelColor: Colors.red,
            // tab未选中时，文字的颜色
            unselectedLabelColor: Colors.white,
          ),
        ),
        // 4.配置与TabBar对应的页面内容
        body: TabBarView(
          children: [
            _buildTabPage(0),
            _buildTabPage(1),
          ],
        ),
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
