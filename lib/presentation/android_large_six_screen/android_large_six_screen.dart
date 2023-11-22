import 'bloc/android_large_six_bloc.dart';
import 'models/android_large_six_model.dart';
import 'package:flutter/material.dart';
import 'package:nean_verg_s_application2/core/app_export.dart';
import 'package:nean_verg_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:nean_verg_s_application2/widgets/app_bar/custom_app_bar.dart';

class AndroidLargeSixScreen extends StatelessWidget {
  const AndroidLargeSixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSixBloc>(
      create: (context) => AndroidLargeSixBloc(AndroidLargeSixState(
        androidLargeSixModelObj: AndroidLargeSixModel(),
      ))
        ..add(AndroidLargeSixInitialEvent()),
      child: AndroidLargeSixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeSixBloc, AndroidLargeSixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              leadingWidth: 34.h,
              leading: Container(
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  left: 14.h,
                  top: 18.v,
                  bottom: 17.v,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCheckmark,
                      height: 7.v,
                      width: 11.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.fromLTRB(4.h, 6.v, 5.h, 7.v),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgSettings,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              title: AppbarTitle(
                text: "lbl_finished_task".tr,
                margin: EdgeInsets.only(left: 11.h),
              ),
            ),
            body: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 38.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.fillGray400.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCheckmarkGray400,
                    height: 15.v,
                    width: 18.h,
                    margin: EdgeInsets.only(
                      top: 16.v,
                      bottom: 13.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 18.h,
                      top: 4.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_clean".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_y".tr,
                                style: CustomTextStyles.bodyLargeGray400,
                              ),
                              TextSpan(
                                text: "msg_esterday_8_00_a_m".tr,
                                style: CustomTextStyles.bodyMediumGray400Light,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
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
