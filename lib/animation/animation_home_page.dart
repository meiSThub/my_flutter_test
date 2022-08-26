import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:my_flutter_test/router/page_num.dart';

/// 动画首页
class AnimationHomePage extends BasePageWidget {
  const AnimationHomePage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _AnimationHomePageState();
}

class _AnimationHomePageState extends BasePageState {
  @override
  String pageTitle = "动画";

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, PageNum.curvedAnimationTestPage);
          },
          child: const Text("Fade动画"),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  @override
  void initData() {}
}
