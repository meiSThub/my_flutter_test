import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 第三方轮播图组件：flutter swiper
/// 地址：https://pub.dev/packages/flutter_swiper
class ThirdSwiperTestPage extends BasePageWidget {
  const ThirdSwiperTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _ThirdSwiperTestPageState();
}

class _ThirdSwiperTestPageState extends BasePageState {
  @override
  String pageTitle = "第三方轮播图组件";

  @override
  Widget buildContentView() {
    return Container(
      child: _buildNormalSwiper(),
    );
  }

  Widget _buildNormalSwiper() {
    // Swiper 需要明确高度，所以不能直接放在Column组件中
    return Swiper(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Image.network(
          "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
          fit: BoxFit.cover,
        );
      },
      // 配置小圆点指示器
      pagination: const SwiperPagination(),
      // 配置左右切换按钮
      control: const SwiperControl(),
    );
  }

  @override
  void initData() {}
}
