import 'bloc/calendar_bloc.dart';
import 'models/calendar_model.dart';
import 'package:flutter/material.dart';
import 'package:nean_verg_s_application2/core/app_export.dart';
import 'package:nean_verg_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:nean_verg_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:nean_verg_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:nean_verg_s_application2/widgets/app_bar/custom_app_bar.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CalendarBloc>(
      create: (context) => CalendarBloc(CalendarState(
        calendarModelObj: CalendarModel(),
      ))
        ..add(CalendarInitialEvent()),
      child: CalendarScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              leadingWidth: 48.h,
              leading: AppbarImage(
                svgPath: ImageConstant.imgIconcalendar,
                margin: EdgeInsets.only(
                  left: 27.h,
                  top: 17.v,
                  bottom: 18.v,
                ),
              ),
              title: AppbarTitle(
                text: "lbl_calendar".tr,
                margin: EdgeInsets.only(left: 12.h),
              ),
              actions: [
                AppbarImage1(
                  svgPath: ImageConstant.imgClose,
                  margin: EdgeInsets.fromLTRB(28.h, 17.v, 28.h, 18.v),
                ),
              ],
            ),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 18.h,
                      top: 35.v,
                      right: 22.h,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 2.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder25,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 2.v,
                          ),
                          decoration: AppDecoration.fillBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            "lbl_september".tr,
                            style: CustomTextStyles.bodySmallWhiteA700,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8.v,
                            right: 1.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_mo".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_tu".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_we".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_th".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_fr".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_sa".tr,
                                style: CustomTextStyles.bodySmallBlue500,
                              ),
                              Text(
                                "lbl_su".tr,
                                style: CustomTextStyles.bodySmallBlue500,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 36.v,
                            right: 2.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_28".tr,
                                style: CustomTextStyles.bodySmallGray700,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 35.h),
                                child: Text(
                                  "lbl_29".tr,
                                  style: CustomTextStyles.bodySmallGray700,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 35.h),
                                child: Text(
                                  "lbl_30".tr,
                                  style: CustomTextStyles.bodySmallGray700,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 36.h),
                                child: Text(
                                  "lbl_31".tr,
                                  style: CustomTextStyles.bodySmallGray700,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 41.h),
                                child: Text(
                                  "lbl_1".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 44.h),
                                child: Text(
                                  "lbl_2".tr,
                                  style: CustomTextStyles.bodySmallBlue500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 42.h),
                                child: Text(
                                  "lbl_3".tr,
                                  style: CustomTextStyles.bodySmallBlue500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 36.v,
                            right: 2.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_4".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_5".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_6".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_7".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_8".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_9".tr,
                                style: CustomTextStyles.bodySmallBlue500,
                              ),
                              Text(
                                "lbl_10".tr,
                                style: CustomTextStyles.bodySmallBlue500,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            top: 36.v,
                            right: 2.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_11".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_12".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_13".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_14".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_15".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_16".tr,
                                style: CustomTextStyles.bodySmallBlue500,
                              ),
                              Text(
                                "lbl_17".tr,
                                style: CustomTextStyles.bodySmallBlue500,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 31.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 4.v,
                                bottom: 3.v,
                              ),
                              child: Text(
                                "lbl_18".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 37.h,
                                top: 4.v,
                                bottom: 3.v,
                              ),
                              child: Text(
                                "lbl_19".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 36.h,
                                top: 4.v,
                                bottom: 3.v,
                              ),
                              child: Text(
                                "lbl_20".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 31.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.h,
                                vertical: 3.v,
                              ),
                              decoration: AppDecoration.fillBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                "lbl_21".tr,
                                style: CustomTextStyles.bodySmallWhiteA700,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 31.h,
                                top: 4.v,
                                bottom: 3.v,
                              ),
                              child: Text(
                                "lbl_22".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 35.h,
                                top: 4.v,
                                bottom: 3.v,
                              ),
                              child: Text(
                                "lbl_23".tr,
                                style: CustomTextStyles.bodySmallBlue500,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 35.h,
                                top: 4.v,
                                bottom: 3.v,
                              ),
                              child: Text(
                                "lbl_24".tr,
                                style: CustomTextStyles.bodySmallBlue500,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 32.v,
                            right: 6.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_25".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_26".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_27".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_28".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_29".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Text(
                                "lbl_30".tr,
                                style: CustomTextStyles.bodySmallBlue500,
                              ),
                              Text(
                                "lbl_1".tr,
                                style: CustomTextStyles.bodySmallBlue800,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5.h, 36.v, 5.h, 3.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_2".tr,
                                style: CustomTextStyles.bodySmallGray700,
                              ),
                              Text(
                                "lbl_3".tr,
                                style: CustomTextStyles.bodySmallGray700,
                              ),
                              Text(
                                "lbl_4".tr,
                                style: CustomTextStyles.bodySmallGray700,
                              ),
                              Text(
                                "lbl_5".tr,
                                style: CustomTextStyles.bodySmallGray700,
                              ),
                              Text(
                                "lbl_6".tr,
                                style: CustomTextStyles.bodySmallGray700,
                              ),
                              Text(
                                "lbl_7".tr,
                                style: CustomTextStyles.bodySmallBlue800,
                              ),
                              Text(
                                "lbl_8".tr,
                                style: CustomTextStyles.bodySmallBlue800,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50.v),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 25.v,
                    ),
                    decoration: AppDecoration.fillGray800.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder25,
                    ),
                    child: Text(
                      "lbl_today".tr,
                      style: CustomTextStyles.titleLargeWhiteA700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
