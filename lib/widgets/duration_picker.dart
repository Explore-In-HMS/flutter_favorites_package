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
import 'package:huawei_widgets/constants/duration_picker_constants.dart';
import 'package:huawei_widgets/huawei_widgets.dart';
import 'package:huawei_widgets/utils/duration_picker_utils.dart';

///You can use this widget inside dialog or bottom sheet
class DurationPicker extends StatelessWidget {
  final Function(int minutes) onDurationSelected;
  final TextStyle chipTextStyle;
  final Color? chipBackgroundColor;
  final double height;
  final int chipCount;
  final int startMinute;
  final int minuteInterval;
  final double spacing;
  final double runSpacing;
  final double chipPadding;
  final double borderRadius;

  const DurationPicker(
      {Key? key,
      required this.onDurationSelected,
      this.chipTextStyle = DurationPickerConstants.chipTextStyle,
      this.chipBackgroundColor,
      this.height = DurationPickerConstants.height,
      this.chipCount = DurationPickerConstants.chipCount,
      this.startMinute = DurationPickerConstants.startMinute,
      this.minuteInterval = DurationPickerConstants.minuteInterval,
      this.spacing = DurationPickerConstants.spacing,
      this.runSpacing = DurationPickerConstants.runSpacing,
      this.chipPadding = DurationPickerConstants.chipPadding,
      this.borderRadius = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: _DurationChips(
        selectedTime: onDurationSelected,
        chipBackgroundColor: chipBackgroundColor,
        chipTextStyle: chipTextStyle,
        chipCount: chipCount,
        startMinute: startMinute,
        minuteInterval: minuteInterval,
        runSpacing: runSpacing,
        spacing: spacing,
        chipPadding: chipPadding,
        borderRadius: borderRadius,
      ),
    );
  }
}

class _DurationChips extends StatelessWidget {
  final Function(int selected) selectedTime;
  final TextStyle? chipTextStyle;
  final Color? chipBackgroundColor;
  final int chipCount;
  final int startMinute;
  final int minuteInterval;
  final double spacing;
  final double runSpacing;
  final double chipPadding;
  final double? borderRadius;

  const _DurationChips(
      {Key? key,
      required this.selectedTime,
      this.chipTextStyle,
      this.chipBackgroundColor,
      required this.chipCount,
      required this.startMinute,
      required this.minuteInterval,
      required this.spacing,
      required this.runSpacing,
      required this.chipPadding,
      required this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: spacing,
      // gap between adjacent chips
      runSpacing: runSpacing,
      // gap between lines
      children: [
        ...generateDurations(context, (selected) {
          selectedTime(selected);
        })
      ],
    );
  }

  generateDurations(BuildContext context, Function selectedValue) {
    return List<Widget>.generate(chipCount, (int index) {
      return InputChip(
        padding: EdgeInsets.all(chipPadding),
        backgroundColor: DurationPickerUtils.backGroundColor(
            CommonUtils.isLight(context), chipBackgroundColor),
        labelStyle: chipTextStyle,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius!))),
        label: Text(CommonUtils.appointmentDurationToText(
            startMinute + (index + 1) * minuteInterval)),
        onSelected: (value) {
          selectedValue(startMinute + (index + 1) * minuteInterval);
        },
      );
    });
  }
}
