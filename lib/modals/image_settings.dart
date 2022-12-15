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

import 'package:flutter/cupertino.dart';
import 'package:huawei_widgets/enums/image_type.dart';

class ImageSettings {
  final String imagePath;
  final double width;
  final double height;
  final ImageType imageType;
  final BoxFit boxFit;

  ImageSettings(
      {required this.imagePath,
      this.width = 250,
      this.height = 200,
      this.imageType = ImageType.asset,
      this.boxFit = BoxFit.fill});
}
