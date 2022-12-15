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

import 'package:huawei_widgets/extensions/extensions.dart';

class TimePickerUtils {
  static String timeTextFromMills(int mills) {
    Duration duration = Duration(milliseconds: mills);
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes";
  }

  static List<int> timePickerTimes(DateTime selectedDate, int interval) {
    DateTime now = DateTime.now();
    List<int> millsList = <int>[];
    int startedMinute =
        now.isSameDate(selectedDate) ? now.hour * 60 + now.minute + 3 : 0;

    millsList.add(startedMinute * 60 * 1000);

    for (int i = startedMinute + interval; i < (24 * 60); i += interval) {
      if (i < 24 * 60) {
        millsList.add(i * 60 * 1000);
      }
    }

    return millsList;
  }
}
