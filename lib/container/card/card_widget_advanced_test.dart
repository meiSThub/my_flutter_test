import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// Card 卡片布局组件，高级用法
class CardWidgetAdvancedPage extends BasePageWidget {
  const CardWidgetAdvancedPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _CardWidgetAdvancedPageState();
}

class _CardWidgetAdvancedPageState extends BasePageState {
  @override
  String pageTitle = "Card卡片组件，实现图文卡片列表";

  @override
  Widget buildContentView() {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => _buildItemView(index),
    );
  }

  Widget _buildItemView(int index) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.red,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/images/ic_meinv.png",
            fit: BoxFit.cover,
          ),
          ListTile(
            leading: ClipOval(
              child: Image.asset(
                "assets/images/ic_meinv.png",
                fit: BoxFit.cover,
                width: 60,
                height: 60,
              ),
            ),
            title: Text("商品 标题${index + 1}"),
            subtitle: const Text("商品描述信息"),
          )
        ],
      ),
    );
  }

  @override
  void initData() {}
}
