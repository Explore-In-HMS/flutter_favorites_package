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

import 'package:example/screens/base/base_stateful_screen.dart';
import 'package:flutter/material.dart';
import 'package:huawei_widgets/widgets/buttons/buttons.dart';
import 'package:huawei_widgets/widgets/time_picker.dart';

class TimePickerScreen extends BaseStatefulScreen {
  const TimePickerScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TimePickerScreen();
}

class _TimePickerScreen extends BaseStatefulScreenState<TimePickerScreen>
    with BaseStateful {
  int _millisecond = 0;

  @override
  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: HSubmitButton(
            child: const Text("Show Default Time Picker"),
            onPressed: () {
              showCustomBottomSheet(
                  context: context,
                  child: TimePicker(
                    selectText: "Select",
                    onSelectPressed: (mills) {
                      setState(() {
                        _millisecond = mills;
                      });
                      Navigator.of(context).pop();
                    },
                    cancelText: "Cancel",
                    onCancelPressed: () {
                      Navigator.of(context).pop();
                    },
                    selected: DateTime.now(),
                  ));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: HSubmitButton(
            child: const Text("Show Custom Time Picker"),
            onPressed: () {
              showCustomBottomSheet(
                  context: context,
                  child: TimePicker(
                    selectText: "Select",
                    onSelectPressed: (mills) {
                      setState(() {
                        _millisecond = mills;
                      });
                      Navigator.of(context).pop();
                    },
                    cancelText: "Cancel",
                    onCancelPressed: () {
                      Navigator.of(context).pop();
                    },
                    selected: DateTime.now(),
                    interval: 10,
                    containerHeight: 250,
                    itemExtent: 20,
                    magnification: 1.3,
                    key: null,
                  ));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Selected Time : $_millisecond millisecond",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }

  @override
  String title() {
    return "Time Picker";
  }
}
