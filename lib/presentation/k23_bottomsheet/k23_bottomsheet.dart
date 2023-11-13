import 'bloc/k23_bloc.dart';
import 'models/k23_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:bcc33_s_application1/widgets/custom_outlined_button.dart';
import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class K23Bottomsheet extends StatelessWidget {
  const K23Bottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K23Bloc>(
      create: (context) => K23Bloc(K23State(
        k23ModelObj: K23Model(),
      ))
        ..add(K23InitialEvent()),
      child: K23Bottomsheet(),
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
            decoration: AppDecoration.fillBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder40,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                _buildPinSettings(context),
                Container(
                  padding: EdgeInsets.only(
                    top: 16.v,
                    bottom: 15.v,
                  ),
                  decoration: AppDecoration.outlineGray90004,
                  child: Column(
                    children: [
                      _buildKingTChalla(context),
                      SizedBox(height: 8.v),
                      _buildKingTChalla1(context),
                      SizedBox(height: 24.v),
                      _buildConfirm(context),
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
  Widget _buildPinSettings(BuildContext context) {
    return CustomOutlinedButton(
      height: 40.v,
      text: "lbl_pin_settings".tr,
      buttonStyle: CustomButtonStyles.outlineGray,
    );
  }

  /// Section Widget
  Widget _buildKingTChalla(BuildContext context) {
    return BlocSelector<K23Bloc, K23State, TextEditingController?>(
      selector: (state) => state.kingTChallaController,
      builder: (context, kingTChallaController) {
        return CustomTextFormField(
          controller: kingTChallaController,
          hintText: "lbl_enter_new_pin".tr,
          borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
          fillColor: theme.colorScheme.onPrimaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildKingTChalla1(BuildContext context) {
    return BlocSelector<K23Bloc, K23State, TextEditingController?>(
      selector: (state) => state.kingTChallaController1,
      builder: (context, kingTChallaController1) {
        return CustomTextFormField(
          controller: kingTChallaController1,
          hintText: "lbl_confirm_new_pin".tr,
          textInputAction: TextInputAction.done,
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary,
          fillColor: theme.colorScheme.onPrimaryContainer,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_confirm".tr.toUpperCase(),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 30.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconsGray300,
          height: 32.adaptSize,
          width: 32.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineBlack,
    );
  }
}
