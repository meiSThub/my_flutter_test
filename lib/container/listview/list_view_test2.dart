import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 水平列表
/// ListView 组件，静态列表展示，理解ListView的最基本构成
class ListViwTestPage2 extends BasePageWidget {
  const ListViwTestPage2({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => ListViewTestPage2State();
}

class ListViewTestPage2State extends BasePageState<ListViwTestPage2> {
  @override
  String pageTitle = "ListView静态水平列表";

  @override
  Widget buildContentView() {
    return Container(
      height: 200,
      color: Colors.yellow,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          Column(
            children: [
              const Text("对于考公之人来说1"),
              Expanded(
                child: Image.network(
                  "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
                  fit: BoxFit.cover,
                  width: 200,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              const Text("对于考公之人来说2"),
              Expanded(
                child: Image.network(
                  "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
                  fit: BoxFit.cover,
                  width: 200,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              const Text("对于考公之人来说3"),
              Expanded(
                child: Image.network(
                  "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
                  fit: BoxFit.cover,
                  width: 200,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              const Text("对于考公之人来说4"),
              Expanded(
                child: Image.network(
                  "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
                  fit: BoxFit.cover,
                  width: 200,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              const Text("对于考公之人来说5"),
              Expanded(
                child: Image.network(
                  "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
                  fit: BoxFit.cover,
                  width: 200,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              const Text("对于考公之人来说6"),
              Expanded(
                child: Image.network(
                  "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
                  fit: BoxFit.cover,
                  width: 200,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}
