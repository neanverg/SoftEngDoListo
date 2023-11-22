import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:nean_verg_s_application2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
        create: (context) => AppNavigationBloc(
            AppNavigationState(appNavigationModelObj: AppNavigationModel()))
          ..add(AppNavigationInitialEvent()),
        child: AppNavigationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              body: SizedBox(
                  width: 375.h,
                  child: Column(children: [
                    Container(
                        decoration: AppDecoration.fillWhiteA,
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 10.v),
                                  child: Text("lbl_app_navigation".tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: appTheme.black900,
                                          fontSize: 20.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text("msg_check_your_app_s".tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: appTheme.blueGray400,
                                          fontSize: 16.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400)))),
                          SizedBox(height: 5.v),
                          Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.black900)
                        ])),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                decoration: AppDecoration.fillWhiteA,
                                child: Column(children: [
                                  GestureDetector(
                                      onTap: () {
                                        onTapAndroidLargeFour(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_android_large".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapAndroidLargeFive(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_android_large2".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapAndroidLargeEight(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_android_large3".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapAndroidLargeThree(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_android_large4".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapCalendar(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_calendar".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapAndroidLargeSix(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_android_large5".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapAndroidLargeSeven(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_android_large6".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black900,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray400)
                                          ])))
                                ]))))
                  ]))));
    });
  }

  /// Navigates to the androidLargeFourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the androidLargeFourScreen.
  onTapAndroidLargeFour(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeFourScreen,
    );
  }

  /// Navigates to the androidLargeFiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the androidLargeFiveScreen.
  onTapAndroidLargeFive(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeFiveScreen,
    );
  }

  /// Navigates to the androidLargeEightScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the androidLargeEightScreen.
  onTapAndroidLargeEight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeEightScreen,
    );
  }

  /// Navigates to the androidLargeThreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the androidLargeThreeScreen.
  onTapAndroidLargeThree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeThreeScreen,
    );
  }

  /// Navigates to the calendarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the calendarScreen.
  onTapCalendar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.calendarScreen,
    );
  }

  /// Navigates to the androidLargeSixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the androidLargeSixScreen.
  onTapAndroidLargeSix(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeSixScreen,
    );
  }

  /// Navigates to the androidLargeSevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the androidLargeSevenScreen.
  onTapAndroidLargeSeven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeSevenScreen,
    );
  }
}
