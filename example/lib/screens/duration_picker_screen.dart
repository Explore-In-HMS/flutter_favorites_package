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
import 'package:huawei_widgets/huawei_widgets.dart';

class DurationPickerScreen extends BaseStatefulScreen {
  const DurationPickerScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DurationPickerScreenState();
}

class _DurationPickerScreenState
    extends BaseStatefulScreenState<DurationPickerScreen> with BaseStateful {
  int _minutes = 0;

  @override
  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Default Duration Picker",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        DurationPicker(
          onDurationSelected: (minutes) {
            setState(() {
              _minutes = minutes;
            });
          },
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Duration Picker with Parameters",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        DurationPicker(
          onDurationSelected: (minutes) {
            setState(() {
              _minutes = minutes;
            });
          },
          borderRadius: 16,
          chipTextStyle: const TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.normal,
              fontSize: 18),
          chipBackgroundColor: Colors.indigo,
          chipCount: 8,
          startMinute: 10,
          minuteInterval: 25,
          spacing: 18,
          runSpacing: 8,
          chipPadding: 3,
          height: 150,
        ),
        const SizedBox(
          height: 16,
        ),
        Text("$_minutes Minutes",
            textAlign: TextAlign.center, style: const TextStyle(fontSize: 18))
      ],
    );
  }

  @override
  String title() {
    return "Duration Picker";
  }
}
