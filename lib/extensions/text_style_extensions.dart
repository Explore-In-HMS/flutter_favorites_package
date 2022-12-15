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

extension TextStyleExtensions on TextStyle {
  TextStyle _base() {
    return TextStyle(
      fontFamily: 'Manrope',
      color: color,
      fontWeight: fontWeight,
      inherit: inherit,
      backgroundColor: backgroundColor,
      fontFamilyFallback: fontFamilyFallback,
      fontSize: fontSize,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      leadingDistribution: leadingDistribution,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      overflow: overflow,
    );
  }

  TextStyle _l() => _base().copyWith(
        fontWeight: fontWeight ?? FontWeight.w700,
      );

  TextStyle l64() => _l().copyWith(fontSize: 64);

  TextStyle l48() => _l().copyWith(fontSize: 48);

  TextStyle l36() => _l().copyWith(fontSize: 36);

  TextStyle l32() => _l().copyWith(fontSize: 32);

  TextStyle l28() => _l().copyWith(fontSize: 28);

  TextStyle l24() => _l().copyWith(fontSize: 24);

  TextStyle _t() => _base().copyWith(fontWeight: fontWeight ?? FontWeight.w600);

  TextStyle t20() => _t().copyWith(fontSize: 20);

  TextStyle t18() => _t().copyWith(fontSize: 18);

  TextStyle t16() => _t().copyWith(fontSize: 16);

  TextStyle t14() => _t().copyWith(fontSize: 14);

  TextStyle t12() => _t().copyWith(fontSize: 12);

  TextStyle t10() => _t().copyWith(fontSize: 10);

  TextStyle _b() => _base().copyWith(
        fontWeight: fontWeight ?? FontWeight.w400,
      );

  TextStyle b48() => _b().copyWith(fontSize: 48);

  TextStyle b36() => _b().copyWith(fontSize: 36);

  TextStyle b28() => _b().copyWith(fontSize: 28);

  TextStyle b24() => _b().copyWith(fontSize: 24);

  TextStyle b20() => _b().copyWith(fontSize: 20);

  TextStyle b18() => _b().copyWith(fontSize: 18);

  TextStyle b16() => _b().copyWith(fontSize: 16);

  TextStyle b14() => _b().copyWith(fontSize: 14);

  TextStyle b12() => _b().copyWith(fontSize: 12);

  TextStyle b10() => _b().copyWith(fontSize: 10);

  TextStyle b9() => _b().copyWith(fontSize: 9);

  TextStyle _h() => _base().copyWith(
        fontWeight: fontWeight ?? FontWeight.w700,
      );

  TextStyle h48() => _h().copyWith(fontSize: 48);

  TextStyle h36() => _h().copyWith(fontSize: 36);

  TextStyle h28() => _h().copyWith(fontSize: 28);

  TextStyle h24() => _h().copyWith(fontSize: 24);

  TextStyle h20() => _h().copyWith(fontSize: 20);

  TextStyle h18() => _h().copyWith(fontSize: 18);

  TextStyle h16() => _h().copyWith(fontSize: 16);

  TextStyle h14() => _h().copyWith(fontSize: 14);

  TextStyle h12() => _h().copyWith(fontSize: 12);

  TextStyle h10() => _h().copyWith(fontSize: 10);

  TextStyle h9() => _h().copyWith(fontSize: 9);
}
