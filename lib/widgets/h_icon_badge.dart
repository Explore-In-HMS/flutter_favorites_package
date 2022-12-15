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

import '../styles/colors/h_colors.dart';

class HIconBadge extends StatelessWidget {
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final int counts;
  final double iconSize;
  final VoidCallback onSelectPressed;
  final Icon badgeIcon;
  final EdgeInsetsGeometry containerPadding;
  final Color? containerColor;
  final BoxShape containerShape;
  final double minWidth;
  final double minHeight;
  final TextStyle? containerTextStyle;
  final Alignment badgePosition;

  const HIconBadge({
    Key? key,
    this.left,
    this.right,
    this.top,
    this.bottom,
    this.counts = 0,
    this.iconSize = 24,
    required this.onSelectPressed,
    required this.badgeIcon,
    this.containerPadding = const EdgeInsets.all(4),
    this.containerColor,
    this.containerShape = BoxShape.circle,
    this.minWidth = 15,
    this.minHeight = 15,
    this.containerTextStyle,
    this.badgePosition = Alignment.topRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: badgePosition,
      children: [
        IconButton(
            iconSize: iconSize, onPressed: onSelectPressed, icon: badgeIcon),
        Visibility(
            visible: counts > 0,
            child: Positioned(
              left: left,
              top: top,
              bottom: bottom,
              right: right,
              child: Container(
                padding: containerPadding,
                decoration: BoxDecoration(
                    color: containerColor ?? HColors.hPurple[100],
                    shape: containerShape),
                constraints: BoxConstraints(
                  minWidth: minWidth,
                  minHeight: minHeight,
                ),
                child: Text(counts.toString(),
                    style: containerTextStyle ??
                        TextStyle(color: HColors.hOrange[100]).b12(),
                    textAlign: TextAlign.center),
              ),
            ))
      ],
    );
  }
}
