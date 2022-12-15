/*
 * Copyright 2022. Flutter Favorites Package All rights reserved.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 */

import 'package:flutter/material.dart';
import 'package:huawei_widgets/huawei_widgets.dart';
import 'package:huawei_widgets/utils/time_picker_utils.dart';

class TimePicker extends StatefulWidget {
  final DateTime selected;
  final int interval;
  final String cancelText;
  final TextStyle? cancelTextStyle;
  final String selectText;
  final TextStyle? selectTextStyle;
  final double containerHeight;
  final Function(int mills) onSelectPressed;
  final Function() onCancelPressed;
  final double magnification;
  final double itemExtent;

  const TimePicker({
    Key? key,
    required this.selected,
    this.interval = 30,
    required this.cancelText,
    this.cancelTextStyle,
    required this.selectText,
    this.selectTextStyle,
    this.containerHeight = 200,
    required this.onSelectPressed,
    required this.onCancelPressed,
    this.magnification = 1.5,
    this.itemExtent = 30,
  }) : super(key: key);

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  List<int> timeList = <int>[];
  int selectedMills = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    timeList =
        TimePickerUtils.timePickerTimes(widget.selected, widget.interval);
    selectedMills = timeList[0];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.containerHeight,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HTextButton(widget.cancelText,
                  style: widget.cancelTextStyle ??
                      TextStyle(color: HColors.hPurple[100]).b16(),
                  onPressed: () {
                widget.onCancelPressed();
              }),
              HTextButton(widget.selectText,
                  style: widget.selectTextStyle ??
                      TextStyle(color: HColors.hPurple[100]).b16(),
                  onPressed: () {
                widget.onSelectPressed(selectedMills);
              })
            ],
          ),
          Expanded(
            flex: 1,
            child: ListWheelScrollView(
              controller: FixedExtentScrollController(),
              useMagnifier: true,
              magnification: widget.magnification,
              onSelectedItemChanged: (index) {
                setState(() {
                  selectedMills = timeList[index];
                });
              },
              itemExtent: widget.itemExtent,
              children: timeList
                  .map((e) => Text(TimePickerUtils.timeTextFromMills(e)))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
