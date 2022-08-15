import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// 按钮页面
class ButtonTestPage extends BasePageWidget {
  const ButtonTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _ButtonTestPageState();
}

class _ButtonTestPageState extends BasePageState {
  @override
  String pageTitle = "按钮组件";

  @override
  Widget buildContentView() {
    return ListView(
      children: [
        _buildElevatedButton(),
        const SizedBox(height: 10),
        _buildTextButton(),
        const SizedBox(height: 10),
        _buildOutlinedButton(),
        const SizedBox(height: 10),
        _buildIconButton(),
        const SizedBox(height: 10),
        _buildButtonBar(),
        const SizedBox(height: 10),
        _buildCustomButton(),
      ],
    );
  }

  /// 凸起按钮：ElevatedButton
  Widget _buildElevatedButton() {
    return Card(
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "ElevatedButton 使用",
              style: TextStyle(
                  color: Colors.red, fontStyle: FontStyle.italic, fontSize: 22),
            ),
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('点击有效');
                  },
                  child: const Text("默认样式"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('点击有效');
                  },
                  child: const Text("修改文字样式"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    // 修改文字颜色
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(
                        // 无法通过color 修改文字颜色
                        // color: Colors.purple,
                        fontSize: 20,
                        // 粗体
                        fontWeight: FontWeight.bold,
                        // 斜体
                        fontStyle: FontStyle.italic,
                        // 字间距
                        letterSpacing: 20,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('点击有效');
                  },
                  child: const Text("阴影效果"),
                  style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all(Colors.red),
                    elevation: MaterialStateProperty.all(20),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      // 展开，与父容器等宽
                      child: SizedBox(
                        height: 50, // 设置按钮高度
                        child: ElevatedButton(
                          onPressed: () {
                            print('点击有效');
                          },
                          child: const Text("自适应按钮"),
                        ),
                      ),
                    ),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.phone),
                  label: const Text("图标按钮"),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('点击有效');
                  },
                  child: const Text("自定义圆角"),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('点击有效');
                  },
                  child: const Text("自定义边框"),
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  // 相当于指定圆形的直径
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      print('点击有效');
                    },
                    child: const Text("圆形按钮"),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(const CircleBorder()),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('点击有效');
                  },
                  child: const Text("修改水波纹颜色"),
                  style: ButtonStyle(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// 文本按钮
  Widget _buildTextButton() {
    return Card(
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "TextButton 使用",
              style: TextStyle(
                  color: Colors.red, fontStyle: FontStyle.italic, fontSize: 22),
            ),
            Wrap(
              spacing: 10,
              children: [
                TextButton(
                  onPressed: () {
                    print('点击有效');
                  },
                  child: const Text("文本按钮"),
                ),
                TextButton(
                  onPressed: () {
                    print('点击有效');
                  },
                  child: const Text("文字按钮"),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.purple),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(fontSize: 30),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// 线框按钮
  Widget _buildOutlinedButton() {
    return Card(
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "线框按钮：OutlinedButton",
              style: TextStyle(
                  color: Colors.red, fontStyle: FontStyle.italic, fontSize: 22),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("线框按钮,默认样式"),
            ),
            const SizedBox(width: 10),
            OutlinedButton(
              onPressed: () {},
              child: const Text("线框按钮，修改样式"),
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  const BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            const SizedBox(width: 10),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.search),
              label: const Text("带图标"),
            )
          ],
        ),
      ),
    );
  }

  /// 图标按钮
  Widget _buildIconButton() {
    return Card(
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "IconButton 使用",
              style: TextStyle(
                  color: Colors.red, fontStyle: FontStyle.italic, fontSize: 22),
            ),
            Wrap(
              spacing: 10,
              children: [
                IconButton(
                  onPressed: () {
                    print('点击有效');
                  },
                  icon: Icon(Icons.settings),
                ),
                IconButton(
                  onPressed: () {
                    print('点击有效');
                  },
                  icon: const Icon(Icons.menu),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// 按钮组
  Widget _buildButtonBar() {
    return Card(
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "按钮组：ButtonBar",
              style: TextStyle(
                  color: Colors.red, fontStyle: FontStyle.italic, fontSize: 22),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonBar(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print('点击有效');
                      },
                      child: const Text("注册"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('点击有效');
                      },
                      child: const Text("登录"),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  /// 自定义按钮
  Widget _buildCustomButton() {
    return Card(
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "自定义按钮",
              style: TextStyle(
                  color: Colors.red, fontStyle: FontStyle.italic, fontSize: 22),
            ),
            _MyButton(
              width: 200,
              height: 40,
              text: "自定义按钮",
              onPressed: () {
                print('点击有效');
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  void initData() {}
}

class _MyButton extends StatelessWidget {
  double width;
  double height;
  String? text;
  VoidCallback? onPressed;

  _MyButton({this.width = 10, this.height = 10, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        child: Text(text ?? ""),
        onPressed: onPressed,
      ),
    );
  }
}
