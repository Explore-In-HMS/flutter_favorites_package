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

import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String formatMonthTextYear({String languageCode = "en"}) =>
      DateFormat('MMMM yyyy', languageCode).format(this);

  String formatDayMonthYearSeparator({String separator = "-"}) =>
      DateFormat("dd${separator}MM${separator}yyyy").format(this);

  String formatDayName({String languageCode = "en"}) =>
      DateFormat('EEE', languageCode).format(this);

  String formatDayMonthTextYear({String languageCode = "en"}) =>
      DateFormat('d MMMM yyyy EEEE', languageCode).format(this);

  String formatDayMonthText({String languageCode = "en"}) =>
      DateFormat('d MMMM EEEE', languageCode).format(this);

  bool isSameDate(DateTime? other) {
    return year == other?.year && month == other?.month && day == other?.day;
  }
}
