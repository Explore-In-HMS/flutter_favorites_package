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
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:huawei_widgets/huawei_widgets.dart';
import 'package:huawei_widgets/styles/button_styles/button_styles.dart';

class HSocialButtons extends StatelessWidget {
  final Widget icon;
  final Widget label;
  final Function() onPressed;
  final double? width;
  final double? height;
  final ButtonStyle? buttonStyle;

  const HSocialButtons._(this.icon, this.label,
      {Key? key,
      required this.onPressed,
      this.width,
      this.height,
      this.buttonStyle});

  factory HSocialButtons.facebook(
      {required Function() onPressed,
      ButtonStyle? buttonStyle,
      String buttonText,
      double? width,
      double? height,
      TextStyle? textStyle}) = _FacebookButton;

  factory HSocialButtons.huawei(
      {required Function() onPressed,
      ButtonStyle? buttonStyle,
      String buttonText,
      double? width,
      double? height,
      TextStyle? textStyle}) = _HuaweiButton;

  factory HSocialButtons.google(
      {required Function() onPressed,
      ButtonStyle? buttonStyle,
      String buttonText,
      double? width,
      double? height,
      TextStyle? textStyle}) = _GoogleButton;

  factory HSocialButtons.github(
      {required Function() onPressed,
      ButtonStyle? buttonStyle,
      String buttonText,
      double? width,
      double? height,
      TextStyle? textStyle}) = _GithubButton;

  factory HSocialButtons.twitter(
      {required Function() onPressed,
      ButtonStyle? buttonStyle,
      String buttonText,
      double? width,
      double? height,
      TextStyle? textStyle}) = _TwitterButton;

  @override
  Widget build(BuildContext context) {
    return HSubmitButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: label,
      buttonStyle: buttonStyle,
    );
  }
}

class _FacebookButton extends HSocialButtons {
  _FacebookButton(
      {required Function() onPressed,
      ButtonStyle? buttonStyle,
      String? buttonText,
      double? width,
      double? height,
      TextStyle? textStyle})
      : super._(
            const Icon(FontAwesomeIcons.facebook),
            _SocialMediaButtonLabel(
              text: buttonText ?? "Facebook",
              style: textStyle,
            ),
            width: width,
            height: height,
            buttonStyle: buttonStyle ?? HButtonStyles.facebookButtonStyle,
            onPressed: onPressed);
}

class _HuaweiButton extends HSocialButtons {
  _HuaweiButton(
      {required Function() onPressed,
      ButtonStyle? buttonStyle,
      String? buttonText,
      double? width,
      double? height,
      TextStyle? textStyle})
      : super._(
            const Icon(HIcons.huawei),
            _SocialMediaButtonLabel(
              text: buttonText ?? "Huawei",
              style: textStyle,
            ),
            width: width,
            height: height,
            buttonStyle: buttonStyle ?? HButtonStyles.huaweiButtonStyle,
            onPressed: onPressed);
}

class _GithubButton extends HSocialButtons {
  _GithubButton(
      {required Function() onPressed,
      ButtonStyle? buttonStyle,
      String? buttonText,
      double? width,
      double? height,
      TextStyle? textStyle})
      : super._(
            const Icon(FontAwesomeIcons.github),
            _SocialMediaButtonLabel(
              text: buttonText ?? "Github",
              style: textStyle,
            ),
            width: width,
            height: height,
            buttonStyle: buttonStyle ?? HButtonStyles.githubButtonStyle,
            onPressed: onPressed);
}

class _TwitterButton extends HSocialButtons {
  _TwitterButton(
      {required Function() onPressed,
      ButtonStyle? buttonStyle,
      String? buttonText,
      double? width,
      double? height,
      TextStyle? textStyle})
      : super._(
            const Icon(FontAwesomeIcons.twitter),
            _SocialMediaButtonLabel(
              text: buttonText ?? "Twitter",
              style: textStyle,
            ),
            width: width,
            height: height,
            buttonStyle: buttonStyle ?? HButtonStyles.twitterButtonStyle,
            onPressed: onPressed);
}

class _GoogleButton extends HSocialButtons {
  _GoogleButton(
      {required Function() onPressed,
      ButtonStyle? buttonStyle,
      String? buttonText,
      double? width,
      double? height,
      TextStyle? textStyle})
      : super._(
            const Icon(FontAwesomeIcons.google),
            _SocialMediaButtonLabel(
              text: buttonText ?? "Google",
              style: textStyle,
            ),
            width: width,
            height: height,
            buttonStyle: buttonStyle ?? HButtonStyles.googleButtonStyle,
            onPressed: onPressed);
}

class _SocialMediaButtonLabel extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const _SocialMediaButtonLabel(
      {Key? key,
      required this.text,
      this.style = CommonTextStyles.socialButtonsDefaultTextStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
