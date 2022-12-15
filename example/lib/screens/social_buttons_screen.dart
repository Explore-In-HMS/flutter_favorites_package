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

class SocialButtonsScreen extends BaseStatelessScreen {
  const SocialButtonsScreen({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Center(
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HSocialButtons.facebook(onPressed: () {}),
            const SizedBox(
              height: 15,
            ),
            HSocialButtons.google(onPressed: () {}),
            const SizedBox(
              height: 15,
            ),
            HSocialButtons.huawei(onPressed: () {}),
            const SizedBox(
              height: 15,
            ),
            HSocialButtons.github(onPressed: () {}),
            const SizedBox(
              height: 15,
            ),
            HSocialButtons.twitter(onPressed: () {}),
            const SizedBox(
              height: 15,
            ),
            HSubmitButton(
              onPressed: () {},
              child: const Text("Sign Up"),
              height: 50,
              width: 150,
            ),
            const SizedBox(
              height: 15,
            ),
            HSubmitButton.icon(
                width: 140,
                height: 60,
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Sign In")),
          ],
        ),
      ),
    );
  }

  @override
  String title() {
    return "Social Buttons";
  }
}
