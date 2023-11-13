import 'bloc/k20_bloc.dart';
import 'models/k20_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class K20Bottomsheet extends StatelessWidget {
  const K20Bottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K20Bloc>(
      create: (context) => K20Bloc(K20State(
        k20ModelObj: K20Model(),
      ))
        ..add(K20InitialEvent()),
      child: K20Bottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      decoration: AppDecoration.bGDark,
      child: Column(
        children: [
          SizedBox(height: 16.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 27.h,
              vertical: 33.v,
            ),
            decoration: AppDecoration.fillBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder40,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_manage_card".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 292.h,
                    margin: EdgeInsets.only(
                      left: 4.h,
                      right: 25.h,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_dolor4".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  child: _buildContent(
                    context,
                    userImage: ImageConstant.imgIconsWhiteA70027x28,
                    userName: "lbl_name_card".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  child: _buildContent(
                    context,
                    userImage: ImageConstant.imgIcons27x28,
                    userName: "lbl_set_card_limit".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  child: _buildContent(
                    context,
                    userImage: ImageConstant.imgIcons13,
                    userName: "lbl_pin_settings".tr,
                  ),
                ),
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.only(right: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIcons27x33,
                        height: 27.v,
                        width: 33.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          top: 6.v,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "lbl_payment_methods".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 36.v),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildContent(
    BuildContext context, {
    required String userImage,
    required String userName,
  }) {
    return Container(
      padding: EdgeInsets.only(
        top: 30.v,
        bottom: 29.v,
      ),
      decoration: AppDecoration.outlineGray90004,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 27.v,
            width: 28.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Text(
              userName,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(right: 4.h),
          ),
        ],
      ),
    );
  }
}
