import 'package:flutter/material.dart';

///  图片测试类
class ImageTestPage extends StatelessWidget {
  const ImageTestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("图片组件使用")),
      body: const ImagePageContent(),
    );
  }
}

/// 内容
class ImagePageContent extends StatelessWidget {
  const ImagePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // 只有一个子View的滑动View，类似与ScrollView
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text("网络图片:"),
            const SizedBox(height: 10),
            _buildNormalImage(),
            _buildRadiusImage(),
            _buildRadiusImage2(),
            const SizedBox(height: 10),
            const Text(
              "本地图片:",
              style: TextStyle(backgroundColor: Colors.yellow),
            ),
            _buildLocalImage(),
          ],
        ),
      ),
    );
  }

  Widget _buildNormalImage() {
    return Container(
      width: 300,
      height: 250,
      color: Colors.green,
      child: Image.network(
        "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
        alignment: Alignment.topCenter,
        color: Colors.yellow,
        // 图片与color组合的模式
        colorBlendMode: BlendMode.colorBurn,
        // 图片填充模式,BoxFit.cover 模式最常用，以不变形的方式，填满整个View
        fit: BoxFit.fitWidth,
        // 重复平铺
        repeat: ImageRepeat.repeatX,
      ),
    );
  }

  /// 圆角图片
  /// 方式1：
  /// 通过Decoration来实现圆角图片的方式：是把加载到的图片当作组件的背景，从而利用decoration的 borderRadius 属性实现圆角图片
  Widget _buildRadiusImage() {
    return Container(
      width: 300,
      height: 250,
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: NetworkImage(
              "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  /// 圆形图片
  /// 方式2：
  /// 利用圆角裁剪组件包裹图片，从而实现圆角图片的效果
  Widget _buildRadiusImage2() {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        color: Colors.green,
        child: ClipOval(
          child: Image.network(
            'http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ));
  }

  /// 加载本地图片
  /// 1.在工程根目录下：建立资源目录，assets/images
  /// 2.在配置文件pubspec.yaml中，配置资源路径，如：
  ///   assets:
  ///     - assets/images/
  /// 3.这样就可以在代码中加载本地图片并显示来
  Widget _buildLocalImage() {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        color: Colors.green,
        child: ClipOval(
          child: Image.asset(
            'assets/images/ic_meinv.png',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ));
  }
}
