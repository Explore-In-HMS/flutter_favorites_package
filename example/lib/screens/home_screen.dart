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

import 'package:example/config/routes.dart';
import 'package:example/screens/base/base_stateless_screen.dart';
import 'package:flutter/material.dart';
import 'package:huawei_widgets/extensions/extensions.dart';

class HomeScreen extends BaseStatelessScreen {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return ListView.builder(
        itemCount: _featureMap.length,
        itemBuilder: (context, index) {
          MapEntry element = _featureMap.entries.elementAt(index);
          Color color = _colorList[index % (_colorList.length - 1)];

          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, element.key, arguments: color);
            },
            child: Container(
              color: color,
              alignment: Alignment.center,
              height: 80,
              child: Text(
                element.value,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white).h16(),
              ),
            ),
          );
        });
  }

  @override
  String title() => "Flutter Favorite Packages";

  @override
  bool showBackButton() => false;
}

List _colorList = [
  const Color(0xffB85252),
  const Color(0xfffca985),
  const Color(0xffF4ABC4),
  const Color(0xfffde903),
  const Color(0xffcd853f),
  const Color(0xff7589bf),
  const Color(0xfffdcfb0),
  const Color(0xffa589c1),
  const Color(0xffa589c1),
];

const Map _featureMap = <String, String>{
  Routes.timePickerScreen: "Time Picker",
  Routes.socialButtonsScreen: "Social Buttons",
  Routes.badgeScreen: "Badge",
  Routes.colorPickerScreen: "Color Picker",
  Routes.draggableContainerScreen: "Draggable Container",
  Routes.infoDialogScreen: "Info Dialog",
  Routes.durationPickerScreen: "Duration Picker",
  Routes.colorfulTextScreen: "Colorful Text"
};
