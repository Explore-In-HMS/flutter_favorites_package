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

import '../modals/dialog_modals/dialog_modals.dart';

class CommonUtils {
  static isLight(BuildContext context) =>
      Theme.of(context).brightness == Brightness.light;

  static String appointmentDurationToText(int minutes) {
    Duration duration = Duration(minutes: minutes);
    String twoDigits(int n) => n.toString().padLeft(1, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String hour = twoDigits(duration.inHours) != "0"
        ? " ${twoDigits(duration.inHours)}h"
        : "";
    String minute = twoDigitMinutes != "0" ? twoDigitMinutes + "m" : "";

    return "$hour $minute";
  }

  static showCustomDialog<T>(
      {required BuildContext context,
      required Widget child,
      HShowDialogSettings settings = const HShowDialogSettings()}) async {
    return await showDialog<T?>(
      context: context,
      useRootNavigator: settings.useRootNavigator,
      routeSettings: settings.routeSettings,
      barrierDismissible: settings.dismissible,
      anchorPoint: settings.anchorPoint,
      barrierColor: settings.barrierColor,
      barrierLabel: settings.barrierLabel,
      useSafeArea: settings.useSafeArea,
      builder: (BuildContext context) => child,
    );
  }

  static showCustomBottomSheet<T>(
      {required BuildContext context,
      required Widget child,
      HBottomSheetSettings settings = const HBottomSheetSettings()}) async {
    return await showModalBottomSheet<T?>(
        context: context,
        backgroundColor: settings.backgroundColor,
        shape: settings.shape,
        clipBehavior: settings.clipBehavior,
        barrierColor: settings.barrierColor,
        elevation: settings.elevation,
        constraints: settings.constraints,
        anchorPoint: settings.anchorPoint,
        enableDrag: settings.enableDrag,
        isDismissible: settings.dismissible,
        isScrollControlled: settings.isScrollControlled,
        routeSettings: settings.routeSettings,
        transitionAnimationController: settings.transitionAnimationController,
        useRootNavigator: settings.useRootNavigator,
        builder: (_) => child);
  }
}
