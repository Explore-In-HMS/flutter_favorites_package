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
import 'package:huawei_widgets/modals/submit_button_settings.dart';

class ColorPickerUtils {
  static TextStyle titleTextStyle(bool isLight) =>
      TextStyle(color: isLight ? HColors.black : HColors.white).h16();

  static TextStyle cancelButtonTextStyle() =>
      const TextStyle(color: HColors.white).h14();

  static TextStyle selectButtonTextStyle() =>
      const TextStyle(color: HColors.white).h14();

  static SubmitButtonSettings defaultButtonSettings(bool isLight) =>
      SubmitButtonSettings(
          height: 40,
          buttonStyle: ElevatedButton.styleFrom(
              backgroundColor:
                  isLight ? HColors.hOrange[500] : HColors.hPurple[500]));
}
