import 'package:my_flutter_test/container/column/column_widget_test.dart';
import 'package:my_flutter_test/container/container_home_page.dart';
import 'package:my_flutter_test/container/container_widget_test.dart';
import 'package:my_flutter_test/container/expanded/expanded_widget_test.dart';
import 'package:my_flutter_test/container/gridview/grid_view_test1.dart';
import 'package:my_flutter_test/container/gridview/grid_view_test2.dart';
import 'package:my_flutter_test/container/gridview/grid_view_test3.dart';
import 'package:my_flutter_test/container/gridview/grid_view_test4.dart';
import 'package:my_flutter_test/container/listview/list_view_test1.dart';
import 'package:my_flutter_test/container/listview/list_view_test2.dart';
import 'package:my_flutter_test/container/listview/list_view_test3.dart';
import 'package:my_flutter_test/container/listview/list_view_test4.dart';
import 'package:my_flutter_test/container/padding/padding_widget_test.dart';
import 'package:my_flutter_test/container/row/row_widget_test.dart';
import 'package:my_flutter_test/customwidget/custom_widget_test.dart';
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
  // GridView组件
  PageNum.gridViewTestPage1: (context) => const GridViewTestPage1(),
  PageNum.gridViewTestPage2: (context) => const GridViewTestPage2(),
  PageNum.gridViewTestPage3: (context) => const GridViewTestPage3(),
  PageNum.gridViewTestPage4: (context) => const GridViewTestPage4(),
  // Padding组件
  PageNum.paddingWidgetTestPage: (context) => const PaddingWidgetTestPage(),
  // Row 水平线性布局组件
  PageNum.rowWidgetTestPage: (context) => const RowWidgetTestPage(),
  // Column 垂直线性布局组件
  PageNum.columnWidgetTestPage: (context) => const ColumnWidgetTestPage(),
  // Expanded 按照权重划分父容器空间
  PageNum.expandedWidgetTestPage: (context) => const ExpandedWidgetTestPage(),
  // 文案组件
  PageNum.textHome: (context) => const TextWidgetTestPage(),
  // 图片组件
  PageNum.imageHome: (context) => const ImageTestPage(),
  // 自定义组件
  PageNum.customWidgetTestPage: (context) => const CustomWidgetTestPage(),
};
