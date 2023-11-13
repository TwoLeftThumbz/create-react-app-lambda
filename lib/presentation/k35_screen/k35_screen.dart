import 'bloc/k35_bloc.dart';
import 'models/k35_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class K35Screen extends StatelessWidget {
  const K35Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K35Bloc>(
      create: (context) => K35Bloc(K35State(
        k35ModelObj: K35Model(),
      ))
        ..add(K35InitialEvent()),
      child: K35Screen(),
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
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.fillOnPrimary1,
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
                          BlocSelector<K35Bloc, K35State,
                              TextEditingController?>(
                            selector: (state) => state.iconsController,
                            builder: (context, iconsController) {
                              return CustomTextFormField(
                                controller: iconsController,
                                hintText: "msg_flowers_for_moneypenny".tr,
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
                                    imagePath:
                                        ImageConstant.imgIconsWhiteA70032x32,
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
                                borderDecoration: TextFormFieldStyleHelper
                                    .fillOnPrimaryContainer,
                                fillColor: theme.colorScheme.onPrimaryContainer,
                              );
                            },
                          ),
                          SizedBox(height: 8.v),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 12.v,
                            ),
                            decoration:
                                AppDecoration.fillOnPrimaryContainer.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder12,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 4.v,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    "lbl_14_02_2324".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgIcons23,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  radius: BorderRadius.circular(
                                    8.h,
                                  ),
                                ),
                              ],
                            ),
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
                                  Container(
                                    height: 60.v,
                                    width: 64.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 22.h,
                                      vertical: 18.v,
                                    ),
                                    decoration:
                                        AppDecoration.fillOnPrimary.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16,
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgIconsPrimary,
                                      height: 24.v,
                                      width: 20.h,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 16.h,
                                        top: 12.v,
                                        bottom: 12.v,
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
      height: 96.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIcons1,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 4.v,
          bottom: 4.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_transfers".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgAvatarsGray900,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
        ),
      ],
    );
  }
}
