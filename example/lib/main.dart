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
import 'package:example/screens/badge_screen.dart';
import 'package:example/screens/color_picker_screen.dart';
import 'package:example/screens/colorful_text_screen.dart';
import 'package:example/screens/draggable_container_screen.dart';
import 'package:example/screens/duration_picker_screen.dart';
import 'package:example/screens/home_screen.dart';
import 'package:example/screens/info_dialog_screen.dart';
import 'package:example/screens/social_buttons_screen.dart';
import 'package:example/screens/time_picker_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();

  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp])
      .then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Huawei Flutter',
      initialRoute: Routes.homeScreen,
      routes: {
        Routes.homeScreen: (context) => const HomeScreen(),
        Routes.socialButtonsScreen: (context) => const SocialButtonsScreen(),
        Routes.timePickerScreen: (context) => const TimePickerScreen(),
        Routes.badgeScreen: (context) => const BadgeScreen(),
        Routes.colorPickerScreen: (context) => const ColorPickerScreen(),
        Routes.draggableContainerScreen: (context) =>
            const DraggableContainerScreen(),
        Routes.infoDialogScreen: (context) => const InfoDialogScreen(),
        Routes.durationPickerScreen: (context) => const DurationPickerScreen(),
        Routes.colorfulTextScreen: (context) => const ColorfulTextScreen(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
