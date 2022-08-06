import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 垂直列表
/// 用一个for循环，根据服务器返回的数据列表，一次性把所有的itemView都创建出来
/// 弊端：如果数据量比较大，则一次性创建大itemView就比较多，也比较耗内存，不推荐
/// 优化：通过 ListView.builder 方法，根据 滑动的位置，动态创建itemView，
class ListViwTestPage4 extends BasePageWidget {
  const ListViwTestPage4({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => ListViewTestPag4State();
}

class ListViewTestPag4State extends BasePageState<ListViwTestPage4> {
  @override
  String pageTitle = "ListView动态垂直列表";

  final List<Map> _dataList = [];

  @override
  void initData() {
    // 模拟加载数据
    for (var i = 0; i < 10; i++) {
      var item = {
        "title": "列表标题：${i + 1}",
        "imageUrl": "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg"
      };
      _dataList.add(item);
    }
  }

  @override
  Widget buildContentView() {
    return Container(
      color: Colors.yellow,
      child: ListView.builder(
        // padding: const EdgeInsets.all(10),
        itemCount: _dataList.length,
        itemBuilder: (context, position) {
          return _buildItemView(_dataList[position]);
        },
      ),
    );
  }

  /// 创建itemView
  Widget _buildItemView(Map itemData) {
    return Column(
      children: [
        Text(
          itemData["title"],
          style: const TextStyle(
            color: Colors.red,
            fontSize: 25,
          ),
        ),
        Image.network(
          "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),// 当作分割线
      ],
    );
  }
}
