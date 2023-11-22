import 'bloc/android_large_three_bloc.dart';
import 'models/android_large_three_model.dart';
import 'package:flutter/material.dart';
import 'package:nean_verg_s_application2/core/app_export.dart';
import 'package:nean_verg_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:nean_verg_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:nean_verg_s_application2/widgets/app_bar/custom_app_bar.dart';

class AndroidLargeThreeScreen extends StatelessWidget {
  const AndroidLargeThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeThreeBloc>(
        create: (context) => AndroidLargeThreeBloc(AndroidLargeThreeState(
            androidLargeThreeModelObj: AndroidLargeThreeModel()))
          ..add(AndroidLargeThreeInitialEvent()),
        child: AndroidLargeThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AndroidLargeThreeBloc, AndroidLargeThreeState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: CustomAppBar(
                  leadingWidth: 38.h,
                  leading: AppbarImage(
                      svgPath: ImageConstant.imgArrowleft,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 23.v, bottom: 20.v),
                      onTap: () {
                        onTapArrowleftone(context);
                      }),
                  title: AppbarSubtitle(
                      text: "lbl_to_do".tr,
                      margin: EdgeInsets.only(left: 13.h))),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: Column(children: [
                    SizedBox(
                        height: 112.v,
                        width: 342.h,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 18.h, top: 15.v),
                                  child: Text("lbl_title".tr,
                                      style: theme.textTheme.bodyLarge))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 18.h, vertical: 39.v),
                                  decoration: AppDecoration.fillGray400
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder25),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 15.v),
                                        Text("lbl_add_details".tr,
                                            style:
                                                CustomTextStyles.bodyMedium13)
                                      ])))
                        ])),
                    SizedBox(height: 10.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 18.v),
                        decoration: AppDecoration.fillGray400.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder25),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 24.h, right: 10.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_setup_reminder".tr,
                                                style:
                                                    theme.textTheme.bodyMedium),
                                            Container(
                                                height: 15.v,
                                                width: 26.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 4.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                              height: 14.v,
                                                              width: 26.h,
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .green400,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              7.h)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  15.adaptSize,
                                                              width:
                                                                  15.adaptSize,
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .blueGray100,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              7.h))))
                                                    ]))
                                          ]))),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 52.h, top: 17.v),
                                  child: Text("msg_15_minutes_before".tr,
                                      style: theme.textTheme.bodyMedium)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 52.h, top: 14.v),
                                  child: Text("lbl_add_reminder".tr,
                                      style: theme.textTheme.bodyMedium)),
                              SizedBox(height: 15.v),
                              Divider(),
                              SizedBox(height: 15.v)
                            ])),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
