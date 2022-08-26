import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 动画
class CurvedAnimationTestPage extends BasePageWidget {
  const CurvedAnimationTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _CurvedAnimationTestPageState();
}

class _CurvedAnimationTestPageState extends BasePageState
    with TickerProviderStateMixin {
  @override
  String pageTitle = "透明度动画";

  late AnimationController _animationController;
  late CurvedAnimation _inAnimation;
  late CurvedAnimation _outAnimation;
  late CurvedAnimation _currAnimation;

  @override
  void initData() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _inAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.decelerate,
    );
    // _outAnimation = CurvedAnimation(
    //   parent: _animationController,
    //   curve: Curves.bounceOut,
    // );
    _currAnimation = _inAnimation;
  }

  void _changeAnimation() {
    // if (_currAnimation == _inAnimation) {
    //   setState(() {
    //     _currAnimation = _outAnimation;
    //   });
    // } else {
    //   setState(() {
    //     _currAnimation = _inAnimation;
    //   });
    // }
  }

  @override
  Widget buildContentView() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              _animationController.forward();
              _changeAnimation();
            },
            child: const Text('执行动画'),
          ),
          const SizedBox(height: 20),
          FadeTransition(
            opacity: _currAnimation,
            child: const FlutterLogo(
              size: 100,
            ),
          )
        ],
      ),
    );
  }
}
