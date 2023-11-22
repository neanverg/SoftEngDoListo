import 'package:flutter/material.dart';
import 'package:nean_verg_s_application2/presentation/android_large_four_screen/android_large_four_screen.dart';
import 'package:nean_verg_s_application2/presentation/android_large_five_screen/android_large_five_screen.dart';
import 'package:nean_verg_s_application2/presentation/android_large_eight_screen/android_large_eight_screen.dart';
import 'package:nean_verg_s_application2/presentation/android_large_three_screen/android_large_three_screen.dart';
import 'package:nean_verg_s_application2/presentation/calendar_screen/calendar_screen.dart';
import 'package:nean_verg_s_application2/presentation/android_large_six_screen/android_large_six_screen.dart';
import 'package:nean_verg_s_application2/presentation/android_large_seven_screen/android_large_seven_screen.dart';
import 'package:nean_verg_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidLargeFourScreen = '/android_large_four_screen';

  static const String androidLargeFiveScreen = '/android_large_five_screen';

  static const String androidLargeEightScreen = '/android_large_eight_screen';

  static const String androidLargeThreeScreen = '/android_large_three_screen';

  static const String calendarScreen = '/calendar_screen';

  static const String androidLargeSixScreen = '/android_large_six_screen';

  static const String androidLargeSevenScreen = '/android_large_seven_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        androidLargeFourScreen: AndroidLargeFourScreen.builder,
        androidLargeFiveScreen: AndroidLargeFiveScreen.builder,
        androidLargeEightScreen: AndroidLargeEightScreen.builder,
        androidLargeThreeScreen: AndroidLargeThreeScreen.builder,
        calendarScreen: CalendarScreen.builder,
        androidLargeSixScreen: AndroidLargeSixScreen.builder,
        androidLargeSevenScreen: AndroidLargeSevenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: AndroidLargeFourScreen.builder
      };
}
