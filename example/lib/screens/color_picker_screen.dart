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

class ColorPickerScreen extends BaseStatefulScreen {
  const ColorPickerScreen({Key? key}) : super(key: key);

  @override
  _ColorPickerScreenState createState() => _ColorPickerScreenState();
}

class _ColorPickerScreenState extends BaseStatefulScreenState<ColorPickerScreen>
    with BaseStateful {
  Color _selectedColor = Colors.red;

  @override
  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 70,
          color: _selectedColor,
        ),
        HSubmitButton(
            onPressed: () {
              showCustomDialog(
                  context: context,
                  child: HColorPicker(
                    defaultColor: _selectedColor,
                    selectedColor: (Color color) {
                      setState(() {
                        _selectedColor = color;
                      });
                    },
                  ));
            },
            child: const Text("Select Color"))
      ],
    );
  }

  @override
  String title() {
    return "Color Picker";
  }
}
