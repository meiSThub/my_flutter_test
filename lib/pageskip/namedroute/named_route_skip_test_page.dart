import 'package:flutter/material.dart';
import 'package:my_flutter_test/router/route_path.dart';

/// 1. 声明一个路由表
final routes = {
  '/secondPage': (context, arguments) => _SecondPage(arguments: arguments),
  '/thirdPage': (context) => _ThirdPage(),
};

/// 命名路由页面跳转与传参
class NamedRouteSkipTestPage extends StatefulWidget {
  const NamedRouteSkipTestPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NamedRouteSkipTestPageState();
}

class _NamedRouteSkipTestPageState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 声明创建路由的方法，这里因为当前页面是App的一个子页面，所以在这里声明路由表是无效的，
      // 只能到 main.dart 文件中的MaterialApp 中声明该参数，即该参数只在入口MaterialApp
      // 组件声明才有效
      onGenerateRoute: onGenerateRoute,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("命名路由传参"),
        ),
        body: _buildContentView(),
      ),
    );
  }

  Widget _buildContentView() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Text("命名路由传参分为如下几步："),
          const Text("1.定义路由表"),
          const Text("2.MaterialApp中注册路由表，即传参数：onGenerateRoute"),
          const Text("3.通过Navigator.pushNamed方法进行跳转并传值"),
          ElevatedButton(
            onPressed: () {
              // 命名路由方式跳转页面，并通过arguments传值
              Navigator.pushNamed(
                context,
                "/secondPage",
                arguments: {
                  "content": "从上个页面传递过来的参数",
                },
              );
            },
            child: const Text("第一个子页面"),
          ),
          ElevatedButton(
            onPressed: () {
              // 命名路由方式跳转页面，不传参数
              Navigator.pushNamed(context, "/thirdPage");
            },
            child: const Text("第二个子页面"),
          ),
        ],
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  final arguments;

  // 通过构造函数传参
  const _SecondPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("子页面"),
      ),
      body: Center(
        child: Text(arguments?['content'] ?? "子页面内容"),
      ),
    );
  }
}


class _ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("子页面"),
      ),
      body: const Center(
        child: Text("子页面内容，没有传递参数"),
      ),
    );
  }
}
