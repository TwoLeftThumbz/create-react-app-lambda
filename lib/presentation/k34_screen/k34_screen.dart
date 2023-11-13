import 'bloc/k34_bloc.dart';
import 'models/k34_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:bcc33_s_application1/widgets/custom_icon_button.dart';
import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class K34Screen extends StatelessWidget {
  const K34Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K34Bloc>(
      create: (context) => K34Bloc(K34State(
        k34ModelObj: K34Model(),
      ))
        ..add(K34InitialEvent()),
      child: K34Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 4.v,
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(23.h),
                decoration: AppDecoration.outlineOnPrimary1.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder32,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: AppDecoration.outlineGray300,
                      child: Column(
                        children: [
                          Container(
                            decoration: AppDecoration.outlineGray300,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgIcons19,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.only(bottom: 16.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.h,
                                    bottom: 15.v,
                                  ),
                                  child: Text(
                                    "lbl_to_james_bond".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 35.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 35.v,
                                    bottom: 15.v,
                                  ),
                                  child: Text(
                                    "lbl4".tr,
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                ),
                                Text(
                                  "lbl_1_285".tr,
                                  style: theme.textTheme.displayLarge,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 28.v),
                          BlocSelector<K34Bloc, K34State,
                              TextEditingController?>(
                            selector: (state) => state.kingTChallaController,
                            builder: (context, kingTChallaController) {
                              return CustomTextFormField(
                                controller: kingTChallaController,
                                hintText: "msg_reference_optional".tr,
                                borderDecoration:
                                    TextFormFieldStyleHelper.fillBlack,
                                fillColor: appTheme.black900.withOpacity(0.2),
                              );
                            },
                          ),
                          SizedBox(height: 8.v),
                          BlocSelector<K34Bloc, K34State,
                              TextEditingController?>(
                            selector: (state) => state.dateController,
                            builder: (context, dateController) {
                              return CustomTextFormField(
                                controller: dateController,
                                hintText: "msg_date_optional".tr,
                                textInputAction: TextInputAction.done,
                                suffix: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 12.v, 16.h, 12.v),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      8.h,
                                    ),
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgIcons23,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                  ),
                                ),
                                suffixConstraints: BoxConstraints(
                                  maxHeight: 49.v,
                                ),
                                contentPadding: EdgeInsets.only(
                                  left: 16.h,
                                  top: 16.v,
                                  bottom: 16.v,
                                ),
                                borderDecoration:
                                    TextFormFieldStyleHelper.fillBlack,
                                fillColor: appTheme.black900.withOpacity(0.2),
                              );
                            },
                          ),
                          SizedBox(height: 24.v),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Container(
                      decoration: AppDecoration.outlineGray300,
                      child: Column(
                        children: [
                          SizedBox(height: 24.v),
                          Container(
                            width: 313.h,
                            decoration:
                                AppDecoration.outlineBluegray9001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Container(
                              margin: EdgeInsets.only(right: 33.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusStyle.roundedBorder16,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomIconButton(
                                    height: 64.adaptSize,
                                    width: 64.adaptSize,
                                    padding: EdgeInsets.all(20.h),
                                    decoration:
                                        IconButtonStyleHelper.fillOnPrimary,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgIconsBlack900,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 16.h,
                                        top: 14.v,
                                        bottom: 14.v,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "msg_gb80barc20040139494817".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                          SizedBox(height: 1.v),
                                          Text(
                                            "lbl_james_bond".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "msg_does_everything".tr,
                        style: CustomTextStyles.labelMediumWhiteA700,
                      ),
                    ),
                    SizedBox(height: 22.v),
                    CustomElevatedButton(
                      text: "lbl_send_1285".tr.toUpperCase(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              Opacity(
                opacity: 0.5,
                child: Container(
                  width: 316.h,
                  margin: EdgeInsets.symmetric(horizontal: 22.h),
                  child: Text(
                    "msg_lorem_ipsum_dolor3".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIcons1,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_transfers".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgAvatarsGray900,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }
}
