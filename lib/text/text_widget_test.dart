import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';


///  Text 文案组件
class TextWidgetTestPage extends BasePageWidget {
  const TextWidgetTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _TextWidgetTestPageState();
}

class _TextWidgetTestPageState extends BasePageState {
  @override
  String pageTitle = "Text组件";

  @override
  Widget buildContentView() {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Text("普通文本："),
          _buildNormalText(),
          const Text("富文本："),
          _buildRickText(),
        ],
      ),
    );
  }

  Widget _buildNormalText() {
    return Container(
      height: 100,
      color: Colors.black38,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: const Text(
        "人生最遗憾的事：曾经有一份真挚的爱情放在我面前，我没有珍惜，直到失去的时候才追悔莫及！",
        // 内容的对齐方式
        textAlign: TextAlign.end,
        // 文案的显示方向
        textDirection: TextDirection.ltr,
        // 设置文案超过容器时的显示方式，这里超过之后显示 ...
        overflow: TextOverflow.ellipsis,
        // 最大行数
        maxLines: 2,
        // 文案缩放比例，默认时1，即不缩放，字体设置多大，文字就显示多大，这里设置成2，即字体放大2倍
        textScaleFactor: 2,
        // 设置文案的风格
        style: TextStyle(
          // 字体大小
          fontSize: 10,
          // 字体颜色
          color: Colors.blue,
          //字重
          fontWeight: FontWeight.w500,
          // 字体风格，如：斜体
          fontStyle: FontStyle.italic,
          // 字间距
          letterSpacing: 5,
          // Text 背景色
          backgroundColor: Colors.yellow,
          // 文本装饰，如划线,顶部划线，中划线，下划线
          decoration: TextDecoration.lineThrough,
          // 划线的颜色
          decorationColor: Colors.red,
          // 划线的风格，如 虚线
          decorationStyle: TextDecorationStyle.dashed,
        ),
      ),
    );
  }

  /// 构建富文本
  Widget _buildRickText() {
    return Container(
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      color: Colors.black38,
      child: RichText(
        text: TextSpan(
            text: "待还金额：¥",
            style: const TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
            children: [
              const TextSpan(
                text: "100",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              const TextSpan(
                text: ".00",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              WidgetSpan(
                child: TextButton(
                  onPressed: () {
                    print('点击有效');
                  },
                  child: const Text("补充协议"),
                  style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(
                        fontSize: 25,// 字体大小
                      ),
                    ),
                    // 设置按钮字体颜色
                    foregroundColor:
                        MaterialStateProperty.all(Colors.lightBlueAccent),
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                alignment: PlaceholderAlignment.bottom,
              ),
            ]),
      ),
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }
}
