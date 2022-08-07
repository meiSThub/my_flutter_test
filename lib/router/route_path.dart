import 'package:my_flutter_test/bottomnavigationbar/bottom_navigation_bar_test_page.dart';
import 'package:my_flutter_test/bottomnavigationbar/my_home_page.dart';
import 'package:my_flutter_test/container/aspectratio/aspect_ration_widget_test.dart';
import 'package:my_flutter_test/container/card/card_widget_advanced_test.dart';
import 'package:my_flutter_test/container/card/card_widget_home.dart';
import 'package:my_flutter_test/container/card/card_widget_normal_test.dart';
import 'package:my_flutter_test/container/column/column_widget_test.dart';
import 'package:my_flutter_test/container/container_home_page.dart';
import 'package:my_flutter_test/container/container_widget_test.dart';
import 'package:my_flutter_test/container/expanded/expanded_row_column_mix_test.dart';
import 'package:my_flutter_test/container/expanded/expanded_widget_test.dart';
import 'package:my_flutter_test/container/gridview/grid_view_home.dart';
import 'package:my_flutter_test/container/gridview/grid_view_test1.dart';
import 'package:my_flutter_test/container/gridview/grid_view_test2.dart';
import 'package:my_flutter_test/container/gridview/grid_view_test3.dart';
import 'package:my_flutter_test/container/gridview/grid_view_test4.dart';
import 'package:my_flutter_test/container/listview/list_view_home.dart';
import 'package:my_flutter_test/container/listview/list_view_test1.dart';
import 'package:my_flutter_test/container/listview/list_view_test2.dart';
import 'package:my_flutter_test/container/listview/list_view_test3.dart';
import 'package:my_flutter_test/container/listview/list_view_test4.dart';
import 'package:my_flutter_test/container/padding/padding_widget_test.dart';
import 'package:my_flutter_test/container/row/row_widget_test.dart';
import 'package:my_flutter_test/container/stack/stack_align_widget_test.dart';
import 'package:my_flutter_test/container/stack/stack_positioned_widget_test.dart';
import 'package:my_flutter_test/container/stack/stack_widget_home_page.dart';
import 'package:my_flutter_test/container/stack/stack_widget_test.dart';
import 'package:my_flutter_test/container/wrap/aspect_ration_widget_test.dart';
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
  PageNum.listViwHomePage: (context) => const ListViwHomePage(),
  PageNum.listViwTestPage1: (context) => const ListViwTestPage1(),
  PageNum.listViwTestPage2: (context) => const ListViwTestPage2(),
  PageNum.listViwTestPage3: (context) => const ListViwTestPage3(),
  PageNum.listViwTestPage4: (context) => const ListViwTestPage4(),
  // GridView组件
  PageNum.gridViewHomeTestPage: (context) => const GridViewHomeTestPage(),
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
  // Expanded ，Row 和 Column 混合使用，实现一个一拖二的楼层
  PageNum.expandedRowColumnMixPage: (context) => const ExpandedRowColumnMixPage(),
  // Stack 层级布局组件
  PageNum.stackWidgetHomePage: (context) => const StackWidgetHomePage(),
  PageNum.stackWidgetTestPage: (context) => const StackWidgetTestPage(),
  PageNum.stackAlignWidgetTestPage: (context) => const StackAlignWidgetTestPage(),
  PageNum.stackPositionedWidgetTestPage: (context) => const StackPositionedWidgetTestPage(),
  // AspectRatio 组件，可以根据宽高比，指定子View的宽高
  PageNum.aspectRatioWidgetTestPage:(context)=>const AspectRatioWidgetTestPage(),
  // Card 卡片组件
  PageNum.cardWidgetHomePage: (context) => const CardWidgetHomePage(),
  PageNum.cardWidgetNormalPage: (context) => const CardWidgetNormalPage(),
  PageNum.cardWidgetAdvancedPage: (context) => const CardWidgetAdvancedPage(),
  // Wrap 流布局组件
  PageNum.wrapWidgetTestPage: (context) => const WrapWidgetTestPage(),
  // BottomNavigationBar 底部导航栏
  PageNum.bottomNavigationBarTestPage: (context) => const BottomNavigationBarTestPage(),
  // 通过BottomNavigationBar，实现App的首页，有三个tab
  PageNum.myHomePage: (context) => const MyHomePage(),
  // 文案组件
  PageNum.textHome: (context) => const TextWidgetTestPage(),
  // 图片组件
  PageNum.imageHome: (context) => const ImageTestPage(),
  // 自定义组件
  PageNum.customWidgetTestPage: (context) => const CustomWidgetTestPage(),
};
