import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 抽屉组件
class UserAccountsDrawerHeaderPage extends BasePageWidget {
  const UserAccountsDrawerHeaderPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() =>
      _UserAccountsDrawerHeaderPageState();
}

class _UserAccountsDrawerHeaderPageState extends BasePageState {
  @override
  String pageTitle = "右侧边栏，头部组件";

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
      endDrawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  /// 头部组件
                  child: UserAccountsDrawerHeader(
                    accountName: const Text("Flutter"),
                    accountEmail: const Text("flutter@gmail.com"),
                    currentAccountPicture: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg"),
                    ),
                    decoration: const BoxDecoration(color: Colors.purple),
                    otherAccountsPictures: <Widget>[
                      Image.asset("asserts/images/ic_meinv.png"),
                      Image.network(
                          "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg"),
                    ],
                  ),
                ),
              ],
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("首页"),
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
