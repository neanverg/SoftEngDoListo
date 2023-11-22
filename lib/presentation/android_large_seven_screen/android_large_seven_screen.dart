import 'bloc/android_large_seven_bloc.dart';
import 'models/android_large_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:nean_verg_s_application2/core/app_export.dart';

class AndroidLargeSevenScreen extends StatelessWidget {
  const AndroidLargeSevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSevenBloc>(
      create: (context) => AndroidLargeSevenBloc(AndroidLargeSevenState(
        androidLargeSevenModelObj: AndroidLargeSevenModel(),
      ))
        ..add(AndroidLargeSevenInitialEvent()),
      child: AndroidLargeSevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeSevenBloc, AndroidLargeSevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 50.v,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgSettingsGray400,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 680.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      bottom: 671.v,
                    ),
                    child: Text(
                      "lbl_settings".tr,
                      style: theme.textTheme.titleLarge,
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
