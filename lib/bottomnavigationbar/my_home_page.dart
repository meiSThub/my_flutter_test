import 'package:flutter/material.dart';

import 'apphome/tabs.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // 设置底部导航栏
        bottomNavigationBar: Tabs(),
      ),
    );
  }
}
