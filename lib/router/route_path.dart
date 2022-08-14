import 'package:flutter/material.dart';
import 'package:my_flutter_test/appbar/appbar_add_top_tabs_test_page.dart';
import 'package:my_flutter_test/appbar/appbar_add_top_tabs_test_page2.dart';
import 'package:my_flutter_test/appbar/appbar_add_top_tabs_test_page3.dart';
import 'package:my_flutter_test/appbar/appbar_home_page.dart';
import 'package:my_flutter_test/appbar/appbar_normal_use_page.dart';
import 'package:my_flutter_test/appbar/tabcontroller/tab_bar_controller_test_page.dart';
import 'package:my_flutter_test/bottomnavigationbar/bottom_navigation_bar_test_page.dart';
import 'package:my_flutter_test/bottomnavigationbar/my_home_page.dart';
import 'package:my_flutter_test/button/button_test_page.dart';
import 'package:my_flutter_test/button/floating_action_button_test_page.dart';
import 'package:my_flutter_test/button/salted_fish_home_test_page.dart';
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
import 'package:my_flutter_test/drawer/drawer_widget_test_page.dart';
import 'package:my_flutter_test/drawer/user_account_drawer_header_page.dart';
import 'package:my_flutter_test/image/image_widget_test.dart';
import 'package:my_flutter_test/pageskip/backroot/back_to_root_test_page.dart';
import 'package:my_flutter_test/pageskip/namedroute/named_route_skip_test_page.dart';
import 'package:my_flutter_test/pageskip/normalroute/normal_route_skip_test_page.dart';
import 'package:my_flutter_test/pageskip/replaceroute/replace_route_skip_test_page.dart';
import 'package:my_flutter_test/pageskip/route_skip_home_page.dart';
import 'package:my_flutter_test/router/page_num.dart';
import 'package:my_flutter_test/text/text_widget_test.dart';
import 'package:my_flutter_test/textfield/get_text_field_content_test_page.dart';
import 'package:my_flutter_test/textfield/text_field_test_page.dart';

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
  // 页面路由跳转，普通路由跳转与传参
  PageNum.routeSkipHomePage: (context) => const RouteSkipHomePage(),
  PageNum.normalRouteSkipTestPage: (context) => const NormalRouteSkipTestPage(),
  // 命名路由跳转与传参
  PageNum.namedRouteSkipTestPage: (context) => const NamedRouteSkipTestPage(),
  PageNum.replaceRouteSkipTestPage: (context) => const ReplaceRouteSkipTestPage(),
  PageNum.registerPage1: (context) => const RegisterPage1(),
  PageNum.registerPage2: (context) => const RegisterPage2(),
  // 通过路由，回退到指定的页面
  PageNum.back2RootTestPage: (context) => const Back2RootTestPage(),
  PageNum.registerPage3: (context) => const RegisterPage3(),
  PageNum.registerPage4: (context) => const RegisterPage4(),
  // AppBar 使用
  PageNum.appbarHomePage: (context) => const AppbarHomePage(),
  PageNum.appbarNormalUsedPage: (context) => const AppbarNormalUsedPage(),
  PageNum.appbarAddTopTabsTestPage: (context) => const AppbarAddTopTabsTestPage(),
  PageNum.appbarAddTopTabsTestPage2: (context) => const AppbarAddTopTabsTestPage2(),
  PageNum.appbarAddTopTabsTestPage3: (context) => const AppbarAddTopTabsTestPage3(),
  PageNum.tabBarControllerTestPage: (context) => const TabBarControllerTestPage(),
  PageNum.drawerWidgetTestPage: (context) => const DrawerWidgetTestPage(),
  PageNum.userAccountsDrawerHeaderPage: (context) => const UserAccountsDrawerHeaderPage(),
  PageNum.buttonTestPage: (context) => const ButtonTestPage(),
  PageNum.floatingActionButtonTestPage: (context) => const FloatingActionButtonTestPage(),
  PageNum.saltedFishHomePage: (context) => const SaltedFishHomePage(),
  PageNum.textFieldTestPage: (context) => const TextFieldTestPage(),
  PageNum.getTextFieldContextTestPage: (context) => const GetTextFieldContextTestPage(),
};

/// 2.定义创建路由与传参的方法，固定写法
Route? onGenerateRoute(RouteSettings settings) {
  // 统一处理
  String name = settings.name ?? "";
  var pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      Route route = MaterialPageRoute(
        builder: (context) {
          return pageContentBuilder(context, settings.arguments);
        },
      );
      return route;
    } else {
      Route route =
      MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
}
