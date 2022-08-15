import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_flutter_test/base/base_page.dart';

/// Dialog 弹框组件
class DialogTestPage extends BasePageWidget {
  const DialogTestPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _DialogTestPageState();
}

class _DialogTestPageState extends BasePageState {
  @override
  String pageTitle = "弹框Dialog";

  var result;

  @override
  Widget buildContentView() {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Text(
          "选择结果：$result",
          style: const TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            _showAlertDialog();
          },
          child: const Text("AlertDialog"),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            _showSimpleDialog();
          },
          child: const Text("select弹出框：SimpleDialog"),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            _showBottomSheetDialog();
          },
          child: const Text("ActionSheet底部弹出框-showModalBottomSheet"),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            _showToast();
          },
          child: const Text("toast-fluttertoast第三方库"),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  /// AlertDialog
  void _showAlertDialog() async {
    // 点击确定或取消按钮时的返回值
    var result = await showDialog(
      context: context,
      // 点击空白处，弹框不消失
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text("提示信息"),
          content: const Text("您确定要删除吗？"),
          actions: [
            TextButton(
                onPressed: () {
                  // Navigator.pop(context);
                  // 点击取消时，返回值：cancel
                  Navigator.pop(context, "cancel");
                },
                child: const Text("取消")),
            TextButton(
                onPressed: () {
                  // 点击确定时，返回的值：OK
                  Navigator.pop(context, "ok");
                },
                child: const Text("确定")),
          ],
        );
      },
    );
    print('result=$result');
    setState(() {
      this.result = result;
    });
  }

  /// SimpleDialog
  void _showSimpleDialog() async {
    // 点击确定或取消按钮时的返回值
    var result = await showDialog(
      context: context,
      // 点击空白处，弹框不消失
      barrierDismissible: false,
      builder: (context) {
        return SimpleDialog(
          title: const Text("选择内容"),
          children: [
            const Divider(),
            SimpleDialogOption(
                onPressed: () {
                  // Navigator.pop(context);
                  // 点击取消时，返回值：cancel
                  Navigator.pop(context, "Option A");
                },
                child: const Text("Option A")),
            const Divider(),
            SimpleDialogOption(
                onPressed: () {
                  // Navigator.pop(context);
                  // 点击取消时，返回值：cancel
                  Navigator.pop(context, "Option B");
                },
                child: const Text("Option B")),
            const Divider(),
            SimpleDialogOption(
                onPressed: () {
                  // Navigator.pop(context);
                  // 点击取消时，返回值：cancel
                  Navigator.pop(context, "Option C");
                },
                child: const Text("Option C")),
          ],
        );
      },
    );
    print('result=$result');
    setState(() {
      this.result = result;
    });
  }

  /// SimpleDialog
  void _showBottomSheetDialog() async {
    // 点击确定或取消按钮时的返回值
    var result = await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          child: Column(
            children: [
              const Text(
                "选择专业",
                style: TextStyle(fontSize: 22),
              ),
              ListTile(
                title: const Text("物理"),
                onTap: () {
                  Navigator.pop(context, "物理");
                },
              ),
              const Divider(),
              ListTile(
                title: const Text("生物"),
                onTap: () {
                  Navigator.pop(context, "生物");
                },
              ),
              const Divider(),
              ListTile(
                title: const Text("化学"),
                onTap: () {
                  Navigator.pop(context, "化学");
                },
              ),
              const Divider(),
              ListTile(
                title: const Text("语文"),
                onTap: () {
                  Navigator.pop(context, "语文");
                },
              ),
              const Divider(),
            ],
          ),
        );
      },
    );
    print('result=$result');
    setState(() {
      this.result = result;
    });
  }

  /// Toast
  void _showToast() {
    Fluttertoast.showToast(
      msg: "提示消息",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      // 设置toast背景
      backgroundColor: Colors.black,
      fontSize: 16
    );
  }

  @override
  void initData() {}
}
