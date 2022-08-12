import 'package:flutter/material.dart';
import 'package:my_flutter_test/pageskip/namedroute/named_route_skip_test_page.dart';
import 'package:my_flutter_test/router/page_num.dart';

import 'bean/page_route_bean.dart';
import 'router/route_path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 指定首页路由
        initialRoute: PageNum.homePage,
        // 页面路由
        routes: routerPath,
        // 命名路由传参；routes 和 onGenerateRoute 参数可以共存
        onGenerateRoute: onGenerateRoute,
        // 修改主题色
        theme: ThemeData(
          primarySwatch: Colors.blue, // 主题色
        ),
        // 是否显示debug图标，默认为true，即显示，设置成false就可以关闭
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text("首页")),
          body: const HomeContent(),
        ));
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeContentState();
}

class HomeContentState extends State<HomeContent> {
  // 页面路由
  get _pageRouteList => _buildDataList();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1 / 1,
        ),
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
        itemCount: _pageRouteList.length,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        itemBuilder: (context, index) => _buildItemView(_pageRouteList[index]));
  }

  /// 创建item view
  Widget _buildItemView(PageRouteBean item) {
    return ElevatedButton(
      child: Text(item.name),
      onPressed: () {
        Navigator.pushNamed(context, item.routeUrl);
      },
    );
  }

  /// 创建列表数据
  List<PageRouteBean> _buildDataList() {
    return [
      PageRouteBean("Container组件", PageNum.containersHome),
      PageRouteBean("Text组件", PageNum.textHome),
      PageRouteBean("Image组件", PageNum.imageHome),
      PageRouteBean("自定义组件", PageNum.customWidgetTestPage),
      PageRouteBean(
          "BottomNavigationBar底部导航栏", PageNum.bottomNavigationBarTestPage),
      PageRouteBean("实现App首页", PageNum.myHomePage),
      PageRouteBean("路由跳转", PageNum.routeSkipHomePage),
      PageRouteBean("AppBar导航栏组件", PageNum.appbarHomePage),
      PageRouteBean("抽屉组件Drawer", PageNum.drawerWidgetTestPage),
      PageRouteBean("userAccountsDrawerHeader", PageNum.userAccountsDrawerHeaderPage),
      PageRouteBean("按钮组件", PageNum.buttonTestPage),
    ];
  }
}
