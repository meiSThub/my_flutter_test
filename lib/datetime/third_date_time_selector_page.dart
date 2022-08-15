import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:my_flutter_test/base/base_page.dart';
import 'package:date_format/date_format.dart';

/// 第三方日期和时间选择器
class ThirdDateAndTimeSelectorPage extends BasePageWidget {
  const ThirdDateAndTimeSelectorPage({Key? key}) : super(key: key);

  @override
  BasePageState<BasePageWidget> getState() =>
      _ThirdDateAndTimeSelectorPageState();
}

class _ThirdDateAndTimeSelectorPageState extends BasePageState {
  @override
  String pageTitle = "第三方日期和时间选择器";

  // 当前时间
  DateTime now = DateTime.now();

  var _selectDate = null;
  var _selectTime = null;
  var _dateAndTime = null;

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
                Text(_selectTime ?? ""),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: _showTimePicker,
          ),
          const SizedBox(height: 20),
          const Text("日期时间选择器："),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("选择时间"),
                Text(_dateAndTime ?? ""),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: _showDateAndTimePicker,
          ),
        ],
      ),
    );
  }

  /// 显示日期选择器
  _showDatePicker() async {
    var selectDate = await DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(1980),
      maxTime: DateTime(2100),
      onConfirm: (date) {
        print('确认按钮点击事件');
      },
    );
    setState(() {
      _selectDate = selectDate;
    });
  }

  /// 系统时间选择器
  _showTimePicker() async {
    var time = await DatePicker.showTimePicker(context,
        showTitleActions: true, currentTime: DateTime.now());
    setState(() {
      _selectTime = formatDate(time!, [HH, "时", nn, "分", ss, "秒"]);
    });
  }

  /// 同时选择日期和时间
  _showDateAndTimePicker() async {
    var time = await DatePicker.showDateTimePicker(context,
        showTitleActions: true,
        minTime: DateTime(1980),
        maxTime: DateTime(2100),
        currentTime: DateTime.now());
    setState(() {
      _dateAndTime = formatDate(
          time!, [yyyy, "年", mm, "月", dd, "日", HH, ":", nn, ":", ss]);
    });
  }

  @override
  void initData() {}
}
