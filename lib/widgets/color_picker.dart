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
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:huawei_widgets/huawei_widgets.dart';
import 'package:huawei_widgets/utils/color_picker_utils.dart';

import '../modals/submit_button_settings.dart';

class HColorPicker extends StatelessWidget {
  final Color defaultColor;
  final Color? backgroundColor;
  final Function(Color color) selectedColor;
  final String titleText;
  final String selectText;
  final String cancelText;
  final SubmitButtonSettings? selectButtonSettings;
  final SubmitButtonSettings? cancelButtonSettings;
  final TextStyle? titleTextStyle;
  final TextStyle? selectButtonTextStyle;
  final TextStyle? cancelButtonTextStyle;
  final double contentPadding;

  const HColorPicker({
    Key? key,
    this.defaultColor = Colors.white,
    required this.selectedColor,
    this.titleText = "Select Color",
    this.selectText = "Select",
    this.cancelText = "Cancel",
    this.selectButtonSettings,
    this.titleTextStyle,
    this.selectButtonTextStyle,
    this.cancelButtonTextStyle,
    this.contentPadding = 16,
    this.cancelButtonSettings,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLight = CommonUtils.isLight(context);

    EdgeInsets padding = EdgeInsets.all(contentPadding);

    SubmitButtonSettings _selectButtonSettings =
        selectButtonSettings ?? ColorPickerUtils.defaultButtonSettings(isLight);

    SubmitButtonSettings _cancelButtonSettings =
        selectButtonSettings ?? ColorPickerUtils.defaultButtonSettings(isLight);

    Color pickerColor = defaultColor;

    return AlertDialog(
      backgroundColor:
          backgroundColor ?? AppColors.of(context).colorPickerBackgroundColor,
      titleTextStyle: titleTextStyle,
      contentPadding: padding,
      titlePadding: padding,
      title: Text(
        titleText,
        style: titleTextStyle ?? ColorPickerUtils.titleTextStyle(isLight),
      ),
      content: SingleChildScrollView(
        child: Column(
          children: [
            ColorPicker(
              pickerColor: pickerColor,
              onColorChanged: (color) {
                pickerColor = color;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _pickerButton(
                    cancelText,
                    _cancelButtonSettings,
                    cancelButtonTextStyle ??
                        ColorPickerUtils.cancelButtonTextStyle(), () {
                  Navigator.of(context).pop();
                }),
                const SizedBox(
                  width: 10,
                ),
                _pickerButton(
                    selectText,
                    _selectButtonSettings,
                    selectButtonTextStyle ??
                        ColorPickerUtils.selectButtonTextStyle(), () {
                  selectedColor(pickerColor);
                  Navigator.of(context).pop();
                }),
                const SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _pickerButton(String text, SubmitButtonSettings buttonSettings,
      TextStyle textStyle, VoidCallback onPressed) {
    return Expanded(
      flex: 1,
      child: HSubmitButton(
        child: Text(
          text,
          style: textStyle,
        ),
        buttonStyle: buttonSettings.buttonStyle,
        height: buttonSettings.height,
        width: buttonSettings.width,
        clip: buttonSettings.clip,
        onPressed: onPressed,
      ),
    );
  }
}
