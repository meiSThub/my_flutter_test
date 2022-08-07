import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/router/page_num.dart';

/// 在一个流程的最后一个页面中，直接返回首页，有两种方式：
/// 1.通过替换路由的方式的启动流程中的页面
/// 2.通过 Navigator.popUntil 方式，回退到指定的页面，页面在跳转的时候还是通过正常的pushNamed方法进行跳转
///   在最后的页面中，就可以通过 Navigator.popUntil 方法，回退到指定的页面
class Back2RootTestPage extends BasePageWidget {
  const Back2RootTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _Back2RootTestPageState();
}

class _Back2RootTestPageState extends BasePageState {
  @override
  String pageTitle = "回退到指定的页面";

  @override
  Widget buildContentView() {
    return Center(
      child: Column(
        children: [
          const Text("通过Navigator.popUntil方法，可以回退到指定的页面"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, PageNum.registerPage3);
            },
            child: const Text("进入注册流程"),
          ),
        ],
      ),
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}

/// 注册流程，第一个页面
class RegisterPage3 extends StatelessWidget {
  const RegisterPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("注册流程第一步"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("输入手机号，验证短信"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, PageNum.registerPage4);
                },
                child: const Text("下一步"))
          ],
        ),
      ),
    );
  }
}

/// 注册流程，第一个页面
class RegisterPage4 extends StatelessWidget {
  const RegisterPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("注册流程第二步"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("输入密码，注册完成"),
            ElevatedButton(
                onPressed: () {
                  // 回退当前页面，并打开新的页面
                  // Navigator.popAndPushNamed(context, PageNum.back2RootTestPage);
                  // 回退到指定页面
                  Navigator.popUntil(context, (route) {
                    // 回退页面，知道回退到指定的页面为止
                    return route.settings.name == PageNum.back2RootTestPage;
                  });
                },
                child: const Text("注册完成，通过Navigator.popUntil回退到入口页面"))
          ],
        ),
      ),
    );
  }
}
