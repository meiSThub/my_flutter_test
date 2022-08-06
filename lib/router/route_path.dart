import 'package:my_flutter_test/container/container_home_page.dart';
import 'package:my_flutter_test/container/container_widget_test.dart';
import 'package:my_flutter_test/container/listview/list_view_test1.dart';
import 'package:my_flutter_test/container/listview/list_view_test2.dart';
import 'package:my_flutter_test/container/listview/list_view_test3.dart';
import 'package:my_flutter_test/container/listview/list_view_test4.dart';
import 'package:my_flutter_test/image/image_widget_test.dart';
import 'package:my_flutter_test/router/page_num.dart';
import 'package:my_flutter_test/text/text_widget_test.dart';

/// 页面路由
final routerPath = {
  // 容器组件首页
  PageNum.containersHome: (context) => const ContainerHomePage(),
  // Container 组件
  PageNum.containerWidget: (context) => const ContainerWidgetTestPage(),
  // ListView组件
  PageNum.listViwTestPage1: (context) => const ListViwTestPage1(),
  PageNum.listViwTestPage2: (context) => const ListViwTestPage2(),
  PageNum.listViwTestPage3: (context) => const ListViwTestPage3(),
  PageNum.listViwTestPage4: (context) => const ListViwTestPage4(),
  // 文案组件
  PageNum.textHome: (context) => const TextWidgetTestPage(),
  // 图片组件
  PageNum.imageHome: (context) => const ImageTestPage(),
};
