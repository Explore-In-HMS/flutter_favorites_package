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
import 'package:huawei_widgets/constants_private/constants_private.dart';

import '../../enums/enums.dart';

class HSubmitButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  final double? width;
  final double? height;
  final Function()? onLongPressed;
  final ButtonStyle? buttonStyle;
  final Clip clip;

  const HSubmitButton(
      {Key? key,
      required this.onPressed,
      this.onLongPressed,
      this.buttonStyle,
      required this.child,
      this.clip = Clip.none,
      this.width,
      this.height})
      : super(key: key);

  factory HSubmitButton.icon(
      {required Function() onPressed,
      Function()? onLongPressed,
      ButtonStyle? buttonStyle,
      final double width,
      final double height,
      Clip clip,
      required Widget icon,
      required Widget label}) = _SubmitButtonWithIcon;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: SubmitButtonConstants.constraintSize(context),
      child: SizedBox(
        width: width ?? SubmitButtonConstants.minWidth,
        height: height ?? SubmitButtonConstants.minHeight,
        child: ElevatedButton(
            clipBehavior: clip,
            style: buttonStyle,
            child: child,
            onPressed: onPressed,
            onLongPress: onLongPressed),
      ),
    );
  }
}

class _SubmitButtonWithIcon extends HSubmitButton {
  _SubmitButtonWithIcon(
      {Key? key,
      required Function() onPressed,
      Function()? onLongPressed,
      double? width,
      double? height,
      ButtonIconPosition iconPosition = ButtonIconPosition.start,
      ButtonStyle? buttonStyle,
      Clip clip = Clip.none,
      required Widget icon,
      required Widget label})
      : super(
            key: key,
            onPressed: onPressed,
            clip: clip,
            height: height,
            width: width,
            onLongPressed: onLongPressed,
            buttonStyle: buttonStyle,
            child: _SubmitButtonWithIconChild(
              iconPosition: iconPosition,
              icon: icon,
              label: label,
            ));
}

class _SubmitButtonWithIconChild extends StatelessWidget {
  final Widget icon;
  final Widget label;
  final ButtonIconPosition iconPosition;

  const _SubmitButtonWithIconChild(
      {Key? key,
      required this.icon,
      required this.label,
      this.iconPosition = ButtonIconPosition.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisSize: MainAxisSize.min,
      children: _selectButtonItems(icon, label, iconPosition),
    );
  }
}

List<Widget> _selectButtonItems(
        Widget icon, Widget label, ButtonIconPosition iconPosition) =>
    iconPosition == ButtonIconPosition.start
        ? _buttonItemsStart(icon, label)
        : _buttonItemsEnd(icon, label);

List<Widget> _buttonItemsStart(
  Widget icon,
  Widget label,
) =>
    [icon, _spaceBetweenItems, Flexible(child: label)];

List<Widget> _buttonItemsEnd(
  Widget icon,
  Widget label,
) =>
    [Flexible(child: label), _spaceBetweenItems, icon];

Widget _spaceBetweenItems = const SizedBox(
  width: 10,
);
