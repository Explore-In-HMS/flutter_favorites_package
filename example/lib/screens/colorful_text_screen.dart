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

import 'package:example/screens/base/base_stateless_screen.dart';
import 'package:flutter/material.dart';
import 'package:huawei_widgets/huawei_widgets.dart';

class ColorfulTextScreen extends BaseStatelessScreen {
  const ColorfulTextScreen({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Default Colorful text
            const Text("Default Colorful Text Widget:"),
            const SizedBox(
              height: 8,
            ),
            ColorfulText("Default Colorful Text"),
            const SizedBox(
              height: 35,
            ),
            const Text("Footnote Style Colorful Text Widget:"),
            const SizedBox(
              height: 8,
            ),
            ColorfulText(
              "Example Colorful Text",
              style: ThemeText.colorfulTextStyleFootnote,
            ),
            const SizedBox(
              height: 35,
            ),
            const Text("Large Title Colorful Text Widget:"),
            const SizedBox(
              height: 8,
            ),
            ColorfulText(
              "Example Colorful Text",
              style: ThemeText.colorfulTextStyleLargeTitle,
            ),
            const SizedBox(
              height: 35,
            ),
            const Text("Custom 2 Color Colorful Text Widget:"),
            const SizedBox(
              height: 8,
            ),
            ColorfulText(
              "Example Colorful Text",
              colorList: const [Colors.yellow, Colors.blue],
            ),
            const SizedBox(
              height: 35,
            ),
            const Text("Custom 3 Color Colorful Text Widget:"),
            const SizedBox(
              height: 8,
            ),
            ColorfulText(
              "Example Colorful Text",
              colorList: const [Colors.red, Colors.blue, Colors.black],
            ),
            const SizedBox(
              height: 35,
            ),
            const Text("Custom Color & Style:"),
            const SizedBox(
              height: 8,
            ),
            ColorfulText(
              "Example Colorful Text",
              style: ThemeText.colorfulTextStyleLargeTitle,
              colorList: const [Colors.pink, Colors.greenAccent],
            ),
            const SizedBox(
              height: 35,
            ),
            const Text("Custom Color Gradient Alignment Top to Bottom:"),
            const SizedBox(
              height: 8,
            ),
            ColorfulText(
              "Example Colorful Text",
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              style: ThemeText.colorfulTextStyleLargeTitle,
              colorList: const [Colors.white, Colors.black],
            ),
            const SizedBox(
              height: 35,
            ),
            const Text("Custom Color Gradient Alignment Right to Left:"),
            const SizedBox(
              height: 8,
            ),
            ColorfulText(
              "Example Colorful Text",
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              style: ThemeText.colorfulTextStyleLargeTitle,
              colorList: const [Colors.white, Colors.black],
            ),
          ],
        ),
      ),
    );
  }

  @override
  String title() {
    return "Colorful Text";
  }
}
