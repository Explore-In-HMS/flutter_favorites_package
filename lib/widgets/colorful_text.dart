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

class ColorfulText extends StatelessWidget {
  const ColorfulText(
    this.text, {
    Key? key,
    this.colorList = HColors.colorfulTextDefaultColors,
    this.style = ThemeText.colorfulTextDefaultStyle,
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
  })  : assert(
            colorList.length >= 2, "colorList length must be greater than 1"),
        super(key: key);

  final String text;
  final TextStyle style;
  final List<Color> colorList;
  final Alignment begin;
  final Alignment end;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) =>
          LinearGradient(colors: colorList, begin: begin, end: end)
              .createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
