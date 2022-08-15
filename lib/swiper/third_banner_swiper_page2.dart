import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 第三方轮播图组件：flutter swiper
/// 地址：https://pub.dev/packages/flutter_swiper
class ThirdSwiperTestPage2 extends BasePageWidget {
  const ThirdSwiperTestPage2({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _ThirdSwiperTestPage2State();
}

class _ThirdSwiperTestPage2State extends BasePageState {
  @override
  String pageTitle = "第三方轮播图组件";

  @override
  Widget buildContentView() {
    return Container(
      child: ListView(
        children: [
          const Text("普通banner效果"),
          _buildNormalSwiper(),
          const SizedBox(height: 20),
          const Text("层叠效果"),
          _buildLayoutSwiper(),
        ],
      ),
    );
  }

  Widget _buildNormalSwiper() {
    // Swiper 需要明确高度，所以不能直接放在Column组件中
    return Container(
      // 宽度取父容器最大值
      width: double.infinity,
      child: AspectRatio(
        // 指定图片宽高比
        aspectRatio: 16 / 9,
        child: Swiper(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Image.network(
              "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
              fit: BoxFit.cover,
            );
          },
          // 配置小圆点指示器
          pagination: const SwiperPagination(),
          // 循环轮播
          loop: true,
          // 自动轮播
          autoplay: true,
        ),
      ),
    );
  }

  Widget _buildLayoutSwiper() {
    // Swiper 需要明确高度，所以不能直接放在Column组件中
    return Container(
      // 宽度取父容器最大值
      width: double.infinity,
      child: AspectRatio(
        // 指定图片宽高比
        aspectRatio: 16 / 9,
        child: Swiper(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Image.network(
              "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
              fit: BoxFit.cover,
            );
          },
          // 配置小圆点指示器
          pagination: const SwiperPagination(),
          // 层递样式
          itemWidth: 300,
          layout: SwiperLayout.STACK,
          autoplay: true,
        ),
      ),
    );
  }

  @override
  void initData() {}
}
