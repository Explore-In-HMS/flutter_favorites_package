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
import 'package:huawei_widgets/modals/dialog_modals/base_dialog_settings.dart';

class HBottomSheetSettings extends BaseDialogSettings {
  final Color? backgroundColor;
  final double? elevation;
  final ShapeBorder? shape;
  final Clip? clipBehavior;
  final BoxConstraints? constraints;
  final bool isScrollControlled;
  final bool enableDrag;
  final AnimationController? transitionAnimationController;

  const HBottomSheetSettings(
      {this.backgroundColor,
      this.elevation,
      this.shape,
      this.clipBehavior,
      this.constraints,
      super.barrierColor,
      this.isScrollControlled = false,
      super.useRootNavigator = false,
      super.dismissible = true,
      this.enableDrag = true,
      super.routeSettings,
      this.transitionAnimationController,
      super.anchorPoint});
}
