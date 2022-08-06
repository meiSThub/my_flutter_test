import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// ListView 组件，静态列表展示，理解ListView的最基本构成
/// ListTile 是系统提供的ItemView，可以快速的构建一些简单的View
class ListViwTestPage1 extends BasePageWidget {
  const ListViwTestPage1({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => ListViewTestPage1State();
}

class ListViewTestPage1State extends BasePageState<ListViwTestPage1> {
  @override
  String pageTitle = "ListView静态垂直列表";

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const ListTile(
          title: Text("对于考公之人来说1"),
          subtitle: Text(
            "能够一开始就加入军校或者是警校，绝对是最好的选择，因为根本不用愁就业的问题。但是大部分的学生依旧是需要通过自己的努力去走统考或者是国考之路，有些学生非常的厉害，他们能够一次上岸。",
          ),
        ),
        Image.network(
          "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
          fit: BoxFit.cover,
        ),
        const ListTile(
          title: Text("对于考公之人来说2"),
          subtitle: Text(
              "能够一开始就加入军校或者是警校，绝对是最好的选择，因为根本不用愁就业的问题。但是大部分的学生依旧是需要通过自己的努力去走统考或者是国考之路，有些学生非常的厉害，他们能够一次上岸。"),
        ),
        Image.network(
          "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
          fit: BoxFit.cover,
        ),
        const ListTile(
          title: Text("对于考公之人来说3"),
          subtitle: Text(
              "能够一开始就加入军校或者是警校，绝对是最好的选择，因为根本不用愁就业的问题。但是大部分的学生依旧是需要通过自己的努力去走统考或者是国考之路，有些学生非常的厉害，他们能够一次上岸。"),
        ),
        Image.network(
          "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
          fit: BoxFit.cover,
        ),
        const ListTile(
          title: Text("对于考公之人来说4"),
          subtitle: Text(
              "能够一开始就加入军校或者是警校，绝对是最好的选择，因为根本不用愁就业的问题。但是大部分的学生依旧是需要通过自己的努力去走统考或者是国考之路，有些学生非常的厉害，他们能够一次上岸。"),
        ),
        Image.network(
          "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
          fit: BoxFit.cover,
        ),
        const ListTile(
          title: Text("对于考公之人来说5"),
          subtitle: Text(
              "能够一开始就加入军校或者是警校，绝对是最好的选择，因为根本不用愁就业的问题。但是大部分的学生依旧是需要通过自己的努力去走统考或者是国考之路，有些学生非常的厉害，他们能够一次上岸。"),
        ),
        Image.network(
          "http://pic1.win4000.com/wallpaper/7/57ba6b2a9d75e.jpg",
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}
