import 'package:flutter/material.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:date_format/date_format.dart';

/// 系统时间选择器
class SystemTimeSelectorPage extends BasePageWidget {
  const SystemTimeSelectorPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() => _SystemTimeSelectorPageState();
}

class _SystemTimeSelectorPageState extends BasePageState {
  @override
  String pageTitle = " 系统时间选择器";

  // 当前时间
  DateTime now = DateTime.now();

  var _selectDate = null;
  TimeOfDay? _selectTime = null;

  @override
  Widget buildContentView() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("选择日期"),
                Text(_selectDate != null
                    ? formatDate(_selectDate!, [yyyy, "年", mm, "月", dd, "日"])
                    : ""),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: _showDatePicker,
          ),
          const SizedBox(height: 20),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("选择时间"),
                Text(_selectTime?.format(context) ?? ""),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: _showTimePicker,
          ),
        ],
      ),
    );
  }

  /// 显示日期选择器
  _showDatePicker() async {
    var selectDate = await showDatePicker(
        context: context,
        initialDate: now,
        // 时间范围：开始可选时间
        firstDate: DateTime(1980),
        // 时间范围：结束可选时间
        lastDate: DateTime(2100));
    setState(() {
      _selectDate = selectDate;
    });
  }

  /// 系统时间选择器
  _showTimePicker() async {
    var time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    setState(() {
      _selectTime = time;
    });
  }

  @override
  void initData() {}
}
