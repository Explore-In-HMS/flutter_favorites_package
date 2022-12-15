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

import 'package:example/image_paths.dart';
import 'package:example/screens/base/base_stateless_screen.dart';
import 'package:flutter/material.dart';
import 'package:huawei_widgets/huawei_widgets.dart';
import 'package:huawei_widgets/modals/dialog_modals/show_dialog_settings.dart';
import 'package:huawei_widgets/modals/image_settings.dart';
import 'package:huawei_widgets/modals/submit_button_settings.dart';

class InfoDialogScreen extends BaseStatelessScreen {
  const InfoDialogScreen({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          HSubmitButton(
              onPressed: () {
                showCustomDialog(
                    context: context,
                    settings: const HShowDialogSettings(dismissible: false),
                    child: InfoDialog(
                        imageSettings:
                            ImageSettings(imagePath: ImagePaths.letterIconPath),
                        title: "This is default info dialog",
                        subtitle:
                            "You can customize this widget however you want",
                        buttonText: const Text("I see"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }));
              },
              child: const Text("Default")),
          const SizedBox(
            height: 20,
          ),
          HSubmitButton(
              onPressed: () {
                showCustomDialog(
                    context: context,
                    child: InfoDialog(
                        imageSettings:
                            ImageSettings(imagePath: ImagePaths.huaweiIconPath),
                        title: "This is customized info dialog",
                        subtitle:
                            "We changed button text style, Title text style, subtitle text style, background color, padding between title & subtitle and button style.",
                        buttonText: const Text(
                          "I see",
                          style: TextStyle(color: Colors.amber),
                        ),
                        dialogBackgroundColor: Colors.orange,
                        dialogRadius: 10,
                        titleTextStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        paddingBetweenTitleSubtitle: 30,
                        subtitleTextStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        buttonSettings: SubmitButtonSettings(
                            height: 50,
                            width: 200,
                            buttonStyle: ButtonStyle(
                                textStyle: MaterialStateProperty.resolveWith(
                                    (states) => const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                backgroundColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.red))),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }));
              },
              child: const Text("Custom"))
        ],
      ),
    );
  }

  @override
  String title() {
    return "Info Dialog";
  }
}
