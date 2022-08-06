import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 垂直列表
/// 用一个for循环，根据服务器返回的数据列表，一次性把所有的itemView都创建出来
/// 弊端：如果数据量比较大，则一次性创建大itemView就比较多，也比较耗内存，不推荐
/// 优化：通过 ListView.builder 方法，根据 滑动的位置，动态创建itemView，
class ListViwTestPage3 extends BasePageWidget {
  const ListViwTestPage3({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => ListViewTestPage3State();
}

class ListViewTestPage3State extends BasePageState<ListViwTestPage3> {
  @override
  String pageTitle = "ListView动态垂直列表";

  @override
  Widget buildContentView() {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: _buildItemViewList(),
      ),
    );
  }

  ///
  List<Widget> _buildItemViewList() {
    List<Widget> itemList = [];
    for (var i = 0; i < 10; i++) {
      itemList.add(Column(
        children: [
          Text("对于考公之人来说${i + 1}"),
          Image.network(
            "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
            fit: BoxFit.cover,
            width: 200,
          ),
        ],
      ));
    }
    return itemList;
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}
