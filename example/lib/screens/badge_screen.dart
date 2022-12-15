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
import 'package:huawei_widgets/widgets/h_icon_badge.dart';

import 'base/base_stateful_screen.dart';

class BadgeScreen extends BaseStatefulScreen {
  const BadgeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BadgeScreenState();
}

class _BadgeScreenState extends BaseStatefulScreenState<BadgeScreen>
    with BaseStateful {
  int _count = 3;

  @override
  Widget body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Default HIconBadge
            HIconBadge(
              counts: _count,
              badgeIcon: const Icon(Icons.calculate_rounded),
              onSelectPressed: () {},
            ),
            HIconBadge(
              counts: _count,
              top: 2,
              badgeIcon: const Icon(Icons.wysiwyg),
              iconSize: 35,
              containerPadding: const EdgeInsets.all(3),
              onSelectPressed: () {},
            ),
            HIconBadge(
              counts: _count,
              top: 2,
              badgeIcon: const Icon(Icons.calendar_month),
              iconSize: 50,
              containerPadding: const EdgeInsets.all(6),
              containerColor: HColors.hOrange[100],
              containerShape: BoxShape.circle,
              minWidth: 20,
              minHeight: 20,
              containerTextStyle: TextStyle(color: HColors.hPurple[100]).b12(),
              onSelectPressed: () {},
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HSubmitButton(
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                },
                child: const Text("Increase")),
            HSubmitButton(
                onPressed: () {
                  setState(() {
                    _count--;
                    if (_count == 0) {
                      _count = 10;
                    }
                  });
                },
                child: const Text("Decrease")),
          ],
        )
      ],
    );
  }

  @override
  String title() {
    return "Badge";
  }
}
