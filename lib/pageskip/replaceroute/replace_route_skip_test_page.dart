import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/router/page_num.dart';

/// 替换路由
/// 通过Navigator.pushReplacementNamed 方法进行路由跳转的时候，相当于把当前页面先出栈
/// 同时把新的页面压入栈顶，完成替换。
/// 加载栈顶情况：A->B->C,C 在栈顶，现在在C页面通过替换路由的方式跳转到页面D，则新的栈顶情况
/// 如下：A->B->D,所以在D页面回退的时候，直接就回到来B页面，而不是C页面。
class ReplaceRouteSkipTestPage extends BasePageWidget {
  const ReplaceRouteSkipTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _ReplaceRouteSkipTestPageState();
}

class _ReplaceRouteSkipTestPageState extends BasePageState {
  @override
  String pageTitle = "替换路由跳转";

  @override
  Widget buildContentView() {
    return Center(
      child: Column(
        children: [
          const Text("通过替换路由方式跳转的页面，在最终页面回退的时候，可以直接回到最开始的页面"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, PageNum.registerPage1);
            },
            child: const Text("跳转子页面"),
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
class RegisterPage1 extends StatelessWidget {
  const RegisterPage1({Key? key}) : super(key: key);

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
                  Navigator.pushReplacementNamed(
                      context, PageNum.registerPage2);
                },
                child: const Text("下一步"))
          ],
        ),
      ),
    );
  }
}

/// 注册流程，第一个页面
class RegisterPage2 extends StatelessWidget {
  const RegisterPage2({Key? key}) : super(key: key);

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
                  Navigator.pop(context);
                },
                child: const Text("注册完成"))
          ],
        ),
      ),
    );
  }
}
