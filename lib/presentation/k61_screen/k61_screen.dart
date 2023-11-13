import 'bloc/k61_bloc.dart';
import 'models/k61_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/core/utils/validation_functions.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class K61Screen extends StatelessWidget {
  K61Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<K61Bloc>(
      create: (context) => K61Bloc(K61State(
        k61ModelObj: K61Model(),
      ))
        ..add(K61InitialEvent()),
      child: K61Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 28.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 32.v),
                QrImageView(
                  data: 'https://www.google.com',
                  size: 281.adaptSize,
                ),
                SizedBox(height: 56.v),
                _buildInput(context),
              ],
            ),
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
        text: "lbl_payment_links2".tr,
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

  /// Section Widget
  Widget _buildInput(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.fillOnPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: AppDecoration.outlineGray300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_amount".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 11.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 35.v,
                        bottom: 15.v,
                      ),
                      child: Text(
                        "lbl".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    Text(
                      "lbl_1_2562".tr,
                      style: theme.textTheme.displayLarge,
                    ),
                    Spacer(),
                    CustomElevatedButton(
                      height: 31.v,
                      width: 57.h,
                      text: "lbl_paid".tr,
                      margin: EdgeInsets.only(
                        top: 21.v,
                        bottom: 29.v,
                      ),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL16,
                      buttonTextStyle: CustomTextStyles.labelLargePrimary_1,
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_send_to".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 7.v),
          BlocSelector<K61Bloc, K61State, TextEditingController?>(
            selector: (state) => state.emailController,
            builder: (context, emailController) {
              return CustomTextFormField(
                controller: emailController,
                hintText: "msg_juandoe_email_com".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                },
                borderDecoration: TextFormFieldStyleHelper.outlineGrayTL12,
                filled: false,
              );
            },
          ),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            text: "lbl_repeat_as_new".tr.toUpperCase(),
            rightIcon: Container(
              margin: EdgeInsets.only(left: 30.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconsPrimarycontainer,
                height: 32.adaptSize,
                width: 32.adaptSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
