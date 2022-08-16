import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:http/http.dart' as http;

/// 网络请求
class HttpHomePage extends BasePageWidget {
  const HttpHomePage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _HttpHomePageState();
}

class _HttpHomePageState extends BasePageState {
  @override
  String pageTitle = "网络请求";

  var result;

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Text("$result"),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            _toJson();
          },
          child: const Text("Map转json字符串"),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            _toMap();
          },
          child: const Text("json字符串转Map"),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            _testGet();
          },
          child: const Text("执行get请求"),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            _testPost();
          },
          child: const Text("执行post请求"),
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  /// 对象转Json字符串
  void _toJson() {
    var userInfo = {
      "userName": "张三",
      "age": 10,
    };
    setState(() {
      // 把Map类型的数据转换成json字符串
      result = json.encode(userInfo);
    });
  }

  void _toMap() {
    String jsonStr = '{"userName": "张三","age": 10}';

    Map userInfo = json.decode(jsonStr);
    setState(() {
      result = "解析json字符串，userName=${userInfo['userName']}";
    });
  }

  void _testGet() async {
    var apiUrl = Uri.parse('https://www.baidu.com/');
    var response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      setState(() {
        result = "请求成功";
      });
    } else {
      setState(() {
        result = "网络请求失败";
      });
    }
  }

  void _testPost() async {
    var apiUrl = Uri.parse("https://www.baidu.com/");
    var response = await http.post(apiUrl, body: {"userName": "张三", "age": 20});
    print('结果：$response');
    setState(() {
      result = "response status=${response.statusCode}";
    });
  }

  @override
  void initData() {}
}
