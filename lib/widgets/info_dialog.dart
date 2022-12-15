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

import '../constants/info_dialog_constants.dart';
import '../modals/image_settings.dart';

class InfoDialog extends StatefulWidget {
  final String title;
  final String subtitle;
  final Widget buttonText;
  final Function() onPressed;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final EdgeInsets insetPadding;
  final Color? dialogBackgroundColor;
  final Size size;
  final double paddingBetweenTitleSubtitle;
  final double paddingBetweenSubtitleImage;
  final double paddingBetweenImageAndButton;
  final double dialogRadius;
  final ImageSettings imageSettings;
  final SubmitButtonSettings? buttonSettings;

  const InfoDialog(
      {Key? key,
      required this.imageSettings,
      required this.title,
      required this.subtitle,
      required this.buttonText,
      required this.onPressed,
      this.titleTextStyle,
      this.subtitleTextStyle,
      this.insetPadding = InfoDialogConstants.insetPadding,
      this.size = InfoDialogConstants.defaultDialogSize,
      this.dialogBackgroundColor,
      this.paddingBetweenTitleSubtitle =
          InfoDialogConstants.paddingBetweenTitleSubtitle,
      this.paddingBetweenSubtitleImage =
          InfoDialogConstants.paddingBetweenSubtitleImage,
      this.paddingBetweenImageAndButton =
          InfoDialogConstants.paddingBetweenImageAndButton,
      this.dialogRadius = InfoDialogConstants.dialogRadius,
      this.buttonSettings})
      : super(key: key);

  @override
  State<InfoDialog> createState() => _InfoDialogState();
}

class _InfoDialogState extends State<InfoDialog> {
  bool get isLight => CommonUtils.isLight(context);

  SubmitButtonSettings get _buttonSettings =>
      widget.buttonSettings ?? InfoDialogConstants.defaultButtonStyle(isLight);

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height,
      width: widget.size.width,
      child: Dialog(
        clipBehavior: Clip.hardEdge,
        insetPadding: widget.insetPadding,
        backgroundColor: widget.dialogBackgroundColor ??
            AppColors.of(context).defaultBackGroundInfoDialog,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.dialogRadius),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                width: widget.imageSettings.width,
                height: widget.imageSettings.height,
                fit: widget.imageSettings.boxFit,
                image: AssetImage(widget.imageSettings.imagePath),
              ),
              SizedBox(height: widget.paddingBetweenImageAndButton),
              Text(
                widget.title,
                style: widget.titleTextStyle ??
                    const TextStyle(color: Colors.white).t18(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: widget.paddingBetweenTitleSubtitle),
              Text(
                widget.subtitle,
                style: widget.subtitleTextStyle ??
                    const TextStyle(color: Colors.white).b14(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: widget.paddingBetweenSubtitleImage),

              //TODO add_feature: submit button
              HSubmitButton(
                child: widget.buttonText,
                onPressed: widget.onPressed,
                buttonStyle: _buttonSettings.buttonStyle,
                height: _buttonSettings.height,
                width: _buttonSettings.width,
                clip: _buttonSettings.clip,
              )
            ],
          ),
        ),
      ),
    );
  }
}
