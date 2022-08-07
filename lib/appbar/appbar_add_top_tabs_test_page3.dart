import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 如何在已经有导航栏的页面增加顶部Tab
/// 首先明白一点，Scaffold组件可以嵌套Scaffold组件
/// 实现步骤：
/// 1.在Scaffold组件外层，增加DefaultTabController组件，并指定tab的数量
/// 2.在AppBar中，增加bottom属性，并赋值TabBar
/// 3.把Scaffold组件的body属性，赋值为TabBarView，并为TabBarView添加子View，即Tab选中时对应的页面
///   数量需要与TabBar的子View数量相等，
class AppbarAddTopTabsTestPage3 extends BasePageWidget {
  const AppbarAddTopTabsTestPage3({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _AppbarAddTopTabsTestPage3State();
}

class _AppbarAddTopTabsTestPage3State extends BasePageState {
  @override
  String pageTitle = "Appbar增加顶部tab";

  /// buildContentView() 方法，返回的组件是填充在Scaffold的body属性中的，所以这就变成了
  /// 要在Scaffold内部实现顶部tab的场景
  /// 由于Scaffold可以嵌套Scaffold，所以这里还是可以用 DefaultTabController 包裹一个Scaffold 来实现
  /// 问题：但这种方式带来的问题就是，会有两个导航栏，外层View有一个，当前View也有一个，
  /// 解决方案：可以把TabBar放在AppBar的title属性中，而不放在bottom属性，这样就可以解决问题了
  @override
  Widget buildContentView() {
    // 1.使用DefaultTabController包裹Scaffold
    return DefaultTabController(
      // 2.设置顶部tab的数量
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // 是否需要左侧返回按钮，这里设置成false，不需要返回按钮
          automaticallyImplyLeading: false,
          // 3.配置顶部TabBar，注意这里，是把TabBar放在了title属性中，而不是bottom属性
          title: Row(
            children: const [
              Expanded(
                child: TabBar(
                  tabs: [
                    Tab(text: "热门"),
                    Tab(text: "推荐"),
                  ],
                ),
              ),
            ],
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

  @override
  void initData() {
    // TODO: implement initData
  }
}
