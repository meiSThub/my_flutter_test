import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/router/page_num.dart';

/// 抽屉组件
class DrawerWidgetTestPage extends BasePageWidget {
  const DrawerWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _DrawerWidgetTestPageState();
}

class _DrawerWidgetTestPageState extends BasePageState {
  @override
  String pageTitle = "抽屉组件Drawer";

  @override
  bool hasAppBar() => false;

  @override
  Widget buildContentView() {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: const Center(
        child: Text("页面内容"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  /// 定义头部组件,比较灵活，可以自定义
                  child: DrawerHeader(
                    child: Text("头部"),
                    decoration: BoxDecoration(
                      // 设置背景颜色
                      // color: Colors.blue,
                      // 设置背景图片
                      image: DecorationImage(
                        image: NetworkImage(
                            "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            /// 侧边拦内容
            ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: const Text("首页"),
              onTap: () {
                // 隐藏当前侧边栏
                Navigator.pop(context);
                // 点击侧边栏菜单，跳转到指定页面
                Navigator.pushNamed(
                    context, PageNum.userAccountsDrawerHeaderPage);
              },
            ),
            const Divider(),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text("我的"),
            ),
            const Divider(),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initData() {}
}
