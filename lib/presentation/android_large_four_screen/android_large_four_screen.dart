import 'bloc/android_large_four_bloc.dart';
import 'models/android_large_four_model.dart';
import 'package:flutter/material.dart';
import 'package:nean_verg_s_application2/core/app_export.dart';

class AndroidLargeFourScreen extends StatelessWidget {
  const AndroidLargeFourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFourBloc>(
        create: (context) => AndroidLargeFourBloc(AndroidLargeFourState(
            androidLargeFourModelObj: AndroidLargeFourModel()))
          ..add(AndroidLargeFourInitialEvent()),
        child: AndroidLargeFourScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AndroidLargeFourBloc, AndroidLargeFourState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgIcons8todolist100,
                            height: 230.v,
                            width: 184.h),
                        SizedBox(height: 50.v),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("lbl_dolisto".tr,
                                style: theme.textTheme.headlineLarge)),
                        SizedBox(height: 14.v),
                        SizedBox(
                            width: 164.h,
                            child: Text("msg_streamline_your".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyLargeGray400_1))
                      ]))));
    });
  }
}
