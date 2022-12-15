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
import 'package:flutter_test/flutter_test.dart';
import 'package:huawei_widgets/extensions/extensions.dart';

void main() {
  group("text_styles", () {
    testWidgets("text", (tester) async {
      await tester.pumpWidget(const MaterialApp());

      expect(Text("large text", style: const TextStyle().l64()).style?.fontSize,
          64);
      expect(Text("large text", style: const TextStyle().l32()).style?.fontSize,
          32);

      await tester.pump();

      expect(
          Text(
            "title_text",
            style: const TextStyle().t20(),
          ).style?.fontSize,
          20);
      expect(
          Text(
            "title_text",
            style: const TextStyle().t10(),
          ).style?.fontSize,
          10);
    });
  });
}
