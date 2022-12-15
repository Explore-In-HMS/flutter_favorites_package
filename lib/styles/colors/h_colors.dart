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

abstract class HColors {
  HColors._();

  static const hOrange = MaterialColor(_primaryOrangeValue, <int, Color>{
    50: Color(0xFFFCE9E6),
    100: Color(0xFFFFCDB9),
    200: Color(0xFFFFAD8C),
    300: Color(0xFFFF8D5E),
    400: Color(0xFFFF7438),
    500: Color(_primaryOrangeValue),
    600: Color(0xFFF45707),
    700: Color(0xFFE65001),
    800: Color(0xFFD94800),
    900: Color(0xFFC03A00),
  });

  static const hPurple = MaterialColor(_primaryPurpleValue, <int, Color>{
    50: Color(0xFF0000E6),
    100: Color(0xFF0610EB),
    200: Color(0xFF3818F0),
    300: Color(0xFF5121F8),
    400: Color(0xFF5121F8),
    500: Color(_primaryPurpleValue),
    600: Color(0xFF9B70FF),
    700: Color(0xFFB99CFF),
    800: Color(0xFFD6C4FE),
    900: Color(0xFFF0E7FF)
  });

  static const int _primaryOrangeValue = 0xFFFF5D0C;

  static const int _primaryPurpleValue = 0xFF6026FF;

  static const orangeMaterialDark = MaterialColor(0xFFFF7438, <int, Color>{
    50: Color(0xFFFCE9E6),
    100: Color(0xFFFFCDB9),
    200: Color(0xFFFFAD8C),
    300: Color(0xFFFF8D5E),
    400: Color(0xFFFF7438),
    500: Color(0xFFFF5D0C),
    600: Color(0xFFF45707),
    700: Color(0xFFE65001),
    800: Color(0xFFD94800),
    900: Color(0xFFC03A00),
  });

  static const dark90 = Color(0xFF0F101B);
  static const dark80 = Color(0xFF191B29);
  static const dark70 = Color(0xFF1F2131);
  static const dark60 = Color(0xFF252739);
  static const dark50 = Color(0xFF2A2C3F);
  static const dark40 = Color(0xFF4A4C5C);
  static const dark30 = Color(0xFF6A6B79);
  static const dark20 = Color(0xFFBFC0C5);
  static const dark10 = Color(0xFFDFDFE2);
  static const dark5 = Color(0xFFF2F2F3);
  static const dark2point5 = Color(0xFFF8F8F8);

  static const transparentLight100 = Color(0xFFFFFFFF);
  static const transparentLight75 = Color(0xBFFFFFFF);
  static const transparentLight60 = Color(0x99FFFFFF);
  static const transparentLight45 = Color(0x73FFFFFF);
  static const transparentLight30 = Color(0x4DFFFFFF);
  static const transparentLight15 = Color(0x26FFFFFF);

  static const transparentDark100 = Color(0xFF0F101B);
  static const transparentDark87 = Color(0xDE0F101B);
  static const transparentDark60 = Color(0x990F101B);
  static const transparentDark45 = Color(0x730F101B);
  static const transparentDark30 = Color(0x4D0F101B);
  static const transparentDark15 = Color(0x260F101B);

  static const transparentOrange38 = Color(0x61F26119);
  static const transparentOrange24 = Color(0x3DF26119);
  static const transparentOrange12 = Color(0x1FF26119);
  static const transparentOrange10 = Color(0x1AF26119);
  static const transparentOrange8 = Color(0x14F26119);
  static const transparentOrange4 = Color(0x0AF26119);

  static const red70 = Color(0xFF6E141A);
  static const red60 = Color(0xFFA51F27);
  static const red50 = Color(0xFFDC2934);
  static const red40 = Color(0xFFE55E67);
  static const red30 = Color(0xFFEE9499);
  static const red20 = Color(0xFFF6C9CC);
  static const red10 = Color(0xFFFFF4F5);

  static const green90 = Color(0xFF006043);
  static const green80 = Color(0xFF007D61);
  static const green70 = Color(0xFF008D6F);
  static const green60 = Color(0xFF009E80);
  static const green50 = Color(0xFF00AC8D);
  static const green40 = Color(0xFF00BA9F);
  static const green30 = Color(0xFF2BC8B0);
  static const green20 = Color(0xFF76D8C7);
  static const green10 = Color(0xFFAFE7DD);
  static const green5 = Color(0xFFF3FFF7);

  static const yellow90 = Color(0xFFFA6F00);
  static const yellow80 = Color(0xFFFA8E00);
  static const yellow70 = Color(0xFFFA9F00);
  static const yellow60 = Color(0xFFFAB200);
  static const yellow50 = Color(0xFFFAC000);
  static const yellow40 = Color(0xFFFAC925);
  static const yellow30 = Color(0xFFFBD44E);
  static const yellow20 = Color(0xFFFCDF81);
  static const yellow10 = Color(0xFFFDECB2);
  static const yellow5 = Color(0xFFFEF8E1);

  static const white = Color(0xFFFFFFFF);
  static const black = Colors.black;

  //component colors
  static const xCardBorderColor = Color(0xffF2F2F3);

  //theme colors light
  static final primaryColor = Colors.blue[800];
  static final primaryColorDarkLight = Colors.blue[900];
  static final primaryColorLightLight = Colors.blue[400];
  static final accentColor = Colors.blue[600];
  static const unselectedWidgetColorLight = Colors.black;
  static final toggleableActiveColor = Colors.blue[700];
  static const primarySwatch = Colors.blue;
  static const dividerColorLight = Colors.black;
  static const scaffoldBackgroundColor = Colors.white;

  //theme colors dark
  static const dividerColorDark = Colors.white;
  static const unselectedWidgetColorDark = Colors.white;

  //appbar
  static final appbarBackgroundColor = Colors.blue[800];
  static const appbarTitleTextColor = Colors.white;
  static const appbarIconColor = Colors.white;

  //text
  static const headline1ColorLight = Colors.black;
  static const headline6ColorLight = Colors.blue;
  static const bodyText2ColorLight = Colors.black;
  static const headline1ColorDark = Colors.white;
  static const headline6ColorDark = Colors.white;
  static const bodyText2ColorDark = Colors.white;

  //bottom navigation bar
  static const navItemSelectedColor = Colors.white;
  static const navItemUnselectedColorLight = Colors.grey;
  static final navItemUnselectedColorDark = Colors.grey[500];

  //login button
  static const loginButtonDefaultBackgroundColor = Colors.blue;
  static const loginButtonDefaultTextColor = Colors.blue;
  static const loginButtonIconColor = Colors.white;
  static const loginButtonHuaweiBackgroundColor = Colors.red;
  static const loginButtonGoogleBackgroundColor = Colors.teal;

  //login popup circle avatar
  static const loginAvatarOutsideBackgroundColor = Colors.white;
  static const loginAvatarInsideBackgroundColor = Colors.indigoAccent;
  static const loginAvatarIconColor = Colors.white;
  static const loginPopUpCancelButtonColor = Colors.red;

  static List<Color> notificationColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.cyan
  ];

  static const List<Color> calendarDotsColors = [
    HColors.yellow50,
    HColors.red50,
    Colors.blue,
    HColors.green50,
    Colors.purpleAccent,
  ];

  static const List<Color> colorfulTextDefaultColors = [
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.lightGreen,
    Colors.lime,
    Colors.yellow,
    Colors.amber,
    Colors.orange,
    Colors.deepOrange,
  ];

  static const Color facebookColor = Color(0xff4267B2);
  static const Color googleColor = Color(0xff4285F4);
  static const Color huaweiColor = Color(0xffcf0a2c);
  static const Color githubColor = Color(0xff171515);
  static const Color twitterColor = Color(0xff1DA1F2);
}
