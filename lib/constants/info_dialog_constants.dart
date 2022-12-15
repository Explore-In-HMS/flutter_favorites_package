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
import 'package:huawei_widgets/styles/colors/colors.dart';

import '../modals/submit_button_settings.dart';

class InfoDialogConstants {
  static const EdgeInsets insetPadding =
      EdgeInsets.symmetric(horizontal: 24, vertical: 24);
  static const Size defaultDialogSize = Size(300, 500);
  static const paddingBetweenTitleSubtitle = 12.0;
  static const paddingBetweenSubtitleImage = 16.0;
  static const paddingBetweenImageAndButton = 24.0;
  static const dialogRadius = 8.0;

  static SubmitButtonSettings defaultButtonStyle(bool isLight) =>
      SubmitButtonSettings(
          buttonStyle: ElevatedButton.styleFrom(
              backgroundColor:
                  isLight ? HColors.hOrange[500] : HColors.hPurple[500]));
}
