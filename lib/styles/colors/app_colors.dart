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
import 'package:huawei_widgets/utils/utils.dart';

import 'h_colors.dart';

class AppColors {
  AppColors._();

  static AppColors of(BuildContext context) {
    _context = context;
    return AppColors._();
  }

  static late BuildContext _context;

  static final bool _isLight = CommonUtils.isLight(_context);

  //text colors
  Color textLarge = _isLight ? HColors.dark90 : HColors.white;

  Color textHeader = _isLight ? HColors.dark90 : HColors.white;
  Color textTitle = _isLight ? HColors.dark90 : HColors.white;
  Color textSubtitle = _isLight ? HColors.dark50 : HColors.dark5;
  Color textBody = _isLight ? HColors.dark50 : HColors.dark5;
  Color textBodyLight = _isLight ? HColors.dark30 : HColors.dark20;
  Color textSubtitleSecondary =
      _isLight ? HColors.hPurple[500]! : HColors.hPurple[400]!;
  Color textNormal = _isLight ? HColors.dark50 : HColors.dark2point5;
  Color textHelp = _isLight ? HColors.dark40 : HColors.dark10;
  Color textDisabled = _isLight ? HColors.dark20 : HColors.dark20;
  Color textPlaceholder = _isLight ? HColors.dark30 : HColors.dark20;
  Color textPlaceholderDisabled = _isLight ? HColors.dark20 : HColors.dark30;
  Color primaryColor = _isLight ? HColors.hOrange[500]! : HColors.hOrange[400]!;

  //border colors
  Color borderFocused =
      _isLight ? HColors.hOrange[500]! : HColors.hOrange[400]!;
  Color borderNormal = _isLight ? HColors.dark20 : HColors.dark20;
  Color borderDisabled = _isLight ? HColors.dark10 : HColors.dark30;
  Color borderError = _isLight ? HColors.red50 : HColors.red40;

  //Icon colors
  Color iconNormal = _isLight ? HColors.dark50 : HColors.dark5;
  Color iconPrimary = _isLight ? HColors.hOrange[500]! : HColors.hOrange[400]!;
  Color iconSecondary =
      _isLight ? HColors.hPurple[500]! : HColors.hPurple[400]!;
  Color iconDisabled = _isLight ? HColors.dark20 : HColors.dark30;
  Color backgroundScaffold = _isLight ? HColors.dark80 : HColors.white;
  Color shimmerBase = _isLight ? HColors.dark10 : HColors.dark50;
  Color shimmerHighlight = _isLight ? HColors.dark5 : HColors.dark40;
  Color shimmerParentRecommended = _isLight ? HColors.dark5 : HColors.dark60;

  Color timePickerButtonTextColor =
      _isLight ? HColors.hPurple[500]! : HColors.hOrange[500]!;

  Color colorPickerBackgroundColor =
      _isLight ? HColors.hOrange[200]! : HColors.hPurple[500]!;

  Color defaultBackGroundInfoDialog =
      _isLight ? Colors.blue : HColors.hOrange[500]!;

  Color defaultTextButtonTextColor = _isLight ? Colors.white : Colors.black87;
}
