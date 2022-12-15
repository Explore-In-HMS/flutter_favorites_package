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
import 'package:huawei_widgets/extensions/extensions.dart';
import 'package:huawei_widgets/styles/colors/app_colors.dart';

class HTextButton extends StatelessWidget {
  final TextStyle? style;
  final Function() onPressed;
  final ButtonStyle? buttonStyle;
  final String title;

  const HTextButton(this.title,
      {Key? key, required this.onPressed, this.style, this.buttonStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: buttonStyle,
        onPressed: onPressed,
        child: Text(
          title,
          style: style ??
              TextStyle(color: AppColors.of(context).defaultTextButtonTextColor)
                  .t16(),
        ));
  }
}
