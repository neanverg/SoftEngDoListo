import 'bloc/android_large_five_bloc.dart';
import 'models/android_large_five_model.dart';
import 'package:flutter/material.dart';
import 'package:nean_verg_s_application2/core/app_export.dart';
import 'package:nean_verg_s_application2/widgets/custom_search_view.dart';

class AndroidLargeFiveScreen extends StatelessWidget {
  const AndroidLargeFiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFiveBloc>(
      create: (context) => AndroidLargeFiveBloc(AndroidLargeFiveState(
        androidLargeFiveModelObj: AndroidLargeFiveModel(),
      ))
        ..add(AndroidLargeFiveInitialEvent()),
      child: AndroidLargeFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 26.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocSelector<AndroidLargeFiveBloc, AndroidLargeFiveState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "msg_search_your_list".tr,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(14.h, 8.v, 11.h, 5.v),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgMenu,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 37.v,
                    ),
                    suffix: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 6.v,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgNotificationsnoneblack24dp1,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 37.v,
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 48.v,
                  bottom: 5.v,
                ),
                child: Text(
                  "lbl_starred".tr,
                  style: CustomTextStyles.bodyMediumGray400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
