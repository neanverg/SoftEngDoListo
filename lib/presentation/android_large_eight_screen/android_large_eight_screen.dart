import 'bloc/android_large_eight_bloc.dart';
import 'models/android_large_eight_model.dart';
import 'package:flutter/material.dart';
import 'package:nean_verg_s_application2/core/app_export.dart';

class AndroidLargeEightScreen extends StatelessWidget {
  const AndroidLargeEightScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeEightBloc>(
        create: (context) => AndroidLargeEightBloc(AndroidLargeEightState(
            androidLargeEightModelObj: AndroidLargeEightModel()))
          ..add(AndroidLargeEightInitialEvent()),
        child: AndroidLargeEightScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AndroidLargeEightBloc, AndroidLargeEightState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.h, vertical: 50.v),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowleft,
                            height: 12.v,
                            width: 22.h,
                            margin: EdgeInsets.only(top: 8.v, bottom: 678.v),
                            onTap: () {
                              onTapImgArrowleftone(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h, bottom: 677.v),
                            child: Text("lbl_school".tr,
                                style: theme.textTheme.bodyLarge))
                      ]))));
    });
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapImgArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
