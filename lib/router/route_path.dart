import 'package:my_flutter_test/container/container_home_page.dart';
import 'package:my_flutter_test/container/container_widget_test.dart';
import 'package:my_flutter_test/image/iamge_widget_test.dart';
import 'package:my_flutter_test/router/page_num.dart';
import 'package:my_flutter_test/text/text_widget_test.dart';

/// 页面路由
final routerPath = {
  // 容器组件首页
  PageNum.containersHome: (context) => const ContainerHomePage(),
  // Container 组件
  PageNum.containerWidget: (context) => const ContainerWidgetTestPage(),
  // 文案组件
  PageNum.textHome: (context) => const TextWidgetTestPage(),
  // 图片组件
  PageNum.imageHome: (context) => const ImageTestPage(),
};
