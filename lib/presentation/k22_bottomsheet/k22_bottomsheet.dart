import 'bloc/k22_bloc.dart';
import 'models/k22_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class K22Bottomsheet extends StatelessWidget {
  const K22Bottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K22Bloc>(
      create: (context) => K22Bloc(K22State(
        k22ModelObj: K22Model(),
      ))
        ..add(K22InitialEvent()),
      child: K22Bottomsheet(),
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
              horizontal: 32.h,
              vertical: 28.v,
            ),
            decoration: AppDecoration.fillOnPrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder40,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 3.v),
                _buildCellInfo(context),
                SizedBox(height: 20.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 4.h,
                      right: 38.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildButton(context),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 24.h,
                            top: 9.v,
                            bottom: 9.v,
                          ),
                          child: Text(
                            "lbl_this_account".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                Container(
                  decoration: AppDecoration.outlineGray300,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 23.v,
                          bottom: 22.v,
                        ),
                        decoration: AppDecoration.outlineDeepPurple,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 7.v,
                                    bottom: 3.v,
                                  ),
                                  child: Text(
                                    "lbl_daily".tr,
                                    style: CustomTextStyles
                                        .titleMediumInterPrimary,
                                  ),
                                ),
                                _buildOneThousandThreeHundred(context),
                              ],
                            ),
                            SizedBox(height: 7.v),
                            _buildNumbers(
                              context,
                              priceText: "lbl_0".tr,
                              priceValue: "lbl_2_500".tr,
                            ),
                            SizedBox(height: 7.v),
                            _buildProgress(context),
                            SizedBox(height: 8.v),
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                "lbl_755_remaining".tr,
                                style: CustomTextStyles.labelLargeInter,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 23.v,
                          bottom: 22.v,
                        ),
                        decoration: AppDecoration.outlineDeepPurple,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 7.v,
                                    bottom: 3.v,
                                  ),
                                  child: Text(
                                    "lbl_monthly".tr,
                                    style: CustomTextStyles
                                        .titleMediumInterPrimary,
                                  ),
                                ),
                                _buildTwentyTwoThousandEightHundred(context),
                              ],
                            ),
                            SizedBox(height: 7.v),
                            _buildNumbers(
                              context,
                              priceText: "lbl_0".tr,
                              priceValue: "lbl_25_000".tr,
                            ),
                            SizedBox(height: 7.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgProgress,
                              height: 24.v,
                              width: 249.h,
                              radius: BorderRadius.circular(
                                12.h,
                              ),
                            ),
                            SizedBox(height: 8.v),
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                "msg_17_371_remaining".tr,
                                style: CustomTextStyles.labelLargeInter,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.v),
                      _buildConfirm(context),
                      SizedBox(height: 16.v),
                    ],
                  ),
                ),
                SizedBox(height: 23.v),
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 294.h,
                    margin: EdgeInsets.symmetric(horizontal: 9.h),
                    child: Text(
                      "msg_lorem_ipsum_dolor3".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCellInfo(BuildContext context) {
    return BlocSelector<K22Bloc, K22State, TextEditingController?>(
      selector: (state) => state.cellInfoController,
      builder: (context, cellInfoController) {
        return CustomTextFormField(
          controller: cellInfoController,
          hintText: "lbl_set_card_limit".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 11.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineGray1,
          filled: false,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return BlocSelector<K22Bloc, K22State, TextEditingController?>(
      selector: (state) => state.buttonController,
      builder: (context, buttonController) {
        return CustomTextFormField(
          width: 159.h,
          controller: buttonController,
          hintText: "lbl_this_card".tr,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 2.v, 16.h, 2.v),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                8.h,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconsWhiteA70032x32,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 36.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 16.h,
            top: 9.v,
            bottom: 9.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillBlack,
          fillColor: appTheme.black900.withOpacity(0.2),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildOneThousandThreeHundred(BuildContext context) {
    return CustomElevatedButton(
      height: 33.v,
      width: 78.h,
      text: "lbl_1_300".tr.toUpperCase(),
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillPrimaryTL16,
      buttonTextStyle: CustomTextStyles.labelLargeGray90002,
    );
  }

  /// Section Widget
  Widget _buildProgress(BuildContext context) {
    return BlocSelector<K22Bloc, K22State, TextEditingController?>(
      selector: (state) => state.progressController,
      builder: (context, progressController) {
        return CustomTextFormField(
          width: 185.h,
          controller: progressController,
          textInputAction: TextInputAction.done,
          suffix: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.h,
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgProgress,
              height: 24.v,
              width: 185.h,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 24.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillPrimary,
          fillColor: theme.colorScheme.primary,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTwentyTwoThousandEightHundred(BuildContext context) {
    return CustomElevatedButton(
      height: 33.v,
      width: 88.h,
      text: "lbl_22_800".tr.toUpperCase(),
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillPrimaryTL16,
      buttonTextStyle: CustomTextStyles.labelLargeGray90002,
    );
  }

  /// Section Widget
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_confirm".tr.toUpperCase(),
    );
  }

  /// Common widget
  Widget _buildNumbers(
    BuildContext context, {
    required String priceText,
    required String priceValue,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Opacity(
          opacity: 0.5,
          child: Text(
            priceText,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onError,
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            priceValue,
            style: theme.textTheme.labelLarge!.copyWith(
              color: theme.colorScheme.onError,
            ),
          ),
        ),
      ],
    );
  }
}
