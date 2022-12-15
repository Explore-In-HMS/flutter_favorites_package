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

import 'package:example/screens/base/base_screen_mixin.dart';
import 'package:flutter/material.dart';

abstract class BaseStatelessScreen extends StatelessWidget
    with BaseScreenMixin {
  const BaseStatelessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor(context),
        centerTitle: centerTitle(),
        automaticallyImplyLeading: showBackButton(),
        title: Text(title()),
      ),
      body: body(context),
    );
  }
}
