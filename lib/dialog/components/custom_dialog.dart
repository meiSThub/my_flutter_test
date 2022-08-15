import 'dart:async';

import 'package:flutter/material.dart';

class CustomDialog extends Dialog {
  const CustomDialog({Key? key}) : super(key: key);

  void showTimer(context) {
    /// 计时器
    /// 3000毫秒之后，弹框消失
    Timer.periodic(const Duration(milliseconds: 3000), (timer) {
      Navigator.pop(context);
      // 定时器取消
      timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    // 显示弹框的时候，开启倒计时，3s之后，自动关闭弹框
    // showTimer(context);
    return Material(
      // 透明风格的组件
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Stack(
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: Text("标题"),
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          child: const Icon(Icons.close),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        )),
                  ],
                ),
              ),
              const Divider(height: 1),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  child: const Text("内容"),
                ),
              ),
              const Divider(height: 1),
              Container(
                padding: const EdgeInsets.all(0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("取消"),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("确定"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
