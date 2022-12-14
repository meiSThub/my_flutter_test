import 'package:flutter/material.dart';
import 'package:my_flutter_test/animation/animation_home_page.dart';
import 'package:my_flutter_test/animation/fade_animation_test.dart';
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
import 'package:my_flutter_test/checkbox/check_box_test_page.dart';
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
import 'package:my_flutter_test/datetime/date_time_home_page.dart';
import 'package:my_flutter_test/datetime/system_time_format_page.dart';
import 'package:my_flutter_test/datetime/system_date_time_selector_page.dart';
import 'package:my_flutter_test/datetime/third_date_time_selector_page.dart';
import 'package:my_flutter_test/datetime/third_time_format_page.dart';
import 'package:my_flutter_test/dialog/dialog_page.dart';
import 'package:my_flutter_test/drawer/drawer_widget_test_page.dart';
import 'package:my_flutter_test/drawer/user_account_drawer_header_page.dart';
import 'package:my_flutter_test/image/image_widget_test.dart';
import 'package:my_flutter_test/network/http_home_page.dart';
import 'package:my_flutter_test/pageskip/backroot/back_to_root_test_page.dart';
import 'package:my_flutter_test/pageskip/namedroute/named_route_skip_test_page.dart';
import 'package:my_flutter_test/pageskip/normalroute/normal_route_skip_test_page.dart';
import 'package:my_flutter_test/pageskip/replaceroute/replace_route_skip_test_page.dart';
import 'package:my_flutter_test/pageskip/route_skip_home_page.dart';
import 'package:my_flutter_test/radio/radio_test_page.dart';
import 'package:my_flutter_test/router/page_num.dart';
import 'package:my_flutter_test/swiper/third_banner_swiper_page.dart';
import 'package:my_flutter_test/swiper/third_banner_swiper_page2.dart';
import 'package:my_flutter_test/switch/switch_page.dart';
import 'package:my_flutter_test/text/text_widget_test.dart';
import 'package:my_flutter_test/textfield/get_text_field_content_test_page.dart';
import 'package:my_flutter_test/textfield/text_field_test_page.dart';

/// ????????????
final routerPath = {
  // ??????????????????
  PageNum.containersHome: (context) => const ContainerHomePage(),
  // Container ??????
  PageNum.containerWidget: (context) => const ContainerWidgetTestPage(),
  // ListView??????
  PageNum.listViwHomePage: (context) => const ListViwHomePage(),
  PageNum.listViwTestPage1: (context) => const ListViwTestPage1(),
  PageNum.listViwTestPage2: (context) => const ListViwTestPage2(),
  PageNum.listViwTestPage3: (context) => const ListViwTestPage3(),
  PageNum.listViwTestPage4: (context) => const ListViwTestPage4(),
  // GridView??????
  PageNum.gridViewHomeTestPage: (context) => const GridViewHomeTestPage(),
  PageNum.gridViewTestPage1: (context) => const GridViewTestPage1(),
  PageNum.gridViewTestPage2: (context) => const GridViewTestPage2(),
  PageNum.gridViewTestPage3: (context) => const GridViewTestPage3(),
  PageNum.gridViewTestPage4: (context) => const GridViewTestPage4(),
  // Padding??????
  PageNum.paddingWidgetTestPage: (context) => const PaddingWidgetTestPage(),
  // Row ????????????????????????
  PageNum.rowWidgetTestPage: (context) => const RowWidgetTestPage(),
  // Column ????????????????????????
  PageNum.columnWidgetTestPage: (context) => const ColumnWidgetTestPage(),
  // Expanded ?????????????????????????????????
  PageNum.expandedWidgetTestPage: (context) => const ExpandedWidgetTestPage(),
  // Expanded ???Row ??? Column ?????????????????????????????????????????????
  PageNum.expandedRowColumnMixPage: (context) => const ExpandedRowColumnMixPage(),
  // Stack ??????????????????
  PageNum.stackWidgetHomePage: (context) => const StackWidgetHomePage(),
  PageNum.stackWidgetTestPage: (context) => const StackWidgetTestPage(),
  PageNum.stackAlignWidgetTestPage: (context) => const StackAlignWidgetTestPage(),
  PageNum.stackPositionedWidgetTestPage: (context) => const StackPositionedWidgetTestPage(),
  // AspectRatio ??????????????????????????????????????????View?????????
  PageNum.aspectRatioWidgetTestPage:(context)=>const AspectRatioWidgetTestPage(),
  // Card ????????????
  PageNum.cardWidgetHomePage: (context) => const CardWidgetHomePage(),
  PageNum.cardWidgetNormalPage: (context) => const CardWidgetNormalPage(),
  PageNum.cardWidgetAdvancedPage: (context) => const CardWidgetAdvancedPage(),
  // Wrap ???????????????
  PageNum.wrapWidgetTestPage: (context) => const WrapWidgetTestPage(),
  // BottomNavigationBar ???????????????
  PageNum.bottomNavigationBarTestPage: (context) => const BottomNavigationBarTestPage(),
  // ??????BottomNavigationBar?????????App?????????????????????tab
  PageNum.myHomePage: (context) => const MyHomePage(),
  // ????????????
  PageNum.textHome: (context) => const TextWidgetTestPage(),
  // ????????????
  PageNum.imageHome: (context) => const ImageTestPage(),
  // ???????????????
  PageNum.customWidgetTestPage: (context) => const CustomWidgetTestPage(),
  // ????????????????????????????????????????????????
  PageNum.routeSkipHomePage: (context) => const RouteSkipHomePage(),
  PageNum.normalRouteSkipTestPage: (context) => const NormalRouteSkipTestPage(),
  // ???????????????????????????
  PageNum.namedRouteSkipTestPage: (context) => const NamedRouteSkipTestPage(),
  PageNum.replaceRouteSkipTestPage: (context) => const ReplaceRouteSkipTestPage(),
  PageNum.registerPage1: (context) => const RegisterPage1(),
  PageNum.registerPage2: (context) => const RegisterPage2(),
  // ???????????????????????????????????????
  PageNum.back2RootTestPage: (context) => const Back2RootTestPage(),
  PageNum.registerPage3: (context) => const RegisterPage3(),
  PageNum.registerPage4: (context) => const RegisterPage4(),
  // AppBar ??????
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
  PageNum.checkBoxTestPage: (context) => const CheckBoxTestPage(),
  PageNum.radioTestPage: (context) => const RadioTestPage(),
  PageNum.switchTestPage: (context) => const SwitchTestPage(),
  PageNum.dateTimeHomePage: (context) => const DateTimeHomePage(),
  PageNum.systemTimePage: (context) => const SystemTimePage(),
  PageNum.thirdTimePage: (context) => const ThirdTimePage(),
  PageNum.systemTimeSelectorPage: (context) => const SystemTimeSelectorPage(),
  PageNum.thirdDateAndTimeSelectorPage: (context) => const ThirdDateAndTimeSelectorPage(),
  PageNum.thirdSwiperTestPage: (context) => const ThirdSwiperTestPage(),
  PageNum.thirdSwiperTestPage2: (context) => const ThirdSwiperTestPage2(),
  PageNum.dialogTestPage: (context) => const DialogTestPage(),
  PageNum.httpHomePage: (context) => const HttpHomePage(),
  PageNum.animationHomePage: (context) => const AnimationHomePage(),
  PageNum.curvedAnimationTestPage: (context) => const CurvedAnimationTestPage(),
};

/// 2.???????????????????????????????????????????????????
Route? onGenerateRoute(RouteSettings settings) {
  // ????????????
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
