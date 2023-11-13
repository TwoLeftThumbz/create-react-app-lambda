import 'bloc/k59_bloc.dart';
import 'models/k59_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/core/utils/validation_functions.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_drop_down.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class K59Screen extends StatelessWidget {
  K59Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<K59Bloc>(
      create: (context) => K59Bloc(K59State(
        k59ModelObj: K59Model(),
      ))
        ..add(K59InitialEvent()),
      child: K59Screen(),
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
              children: [
                Text(
                  "lbl_amount".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 39.v,
                        bottom: 11.v,
                      ),
                      child: Text(
                        "lbl4".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    Text(
                      "lbl_7212".tr,
                      style: theme.textTheme.displayLarge,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 17.v,
                        bottom: 15.v,
                      ),
                      child: BlocSelector<K59Bloc, K59State, K59Model?>(
                        selector: (state) => state.k59ModelObj,
                        builder: (context, k59ModelObj) {
                          return CustomDropDown(
                            width: 128.h,
                            icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(16.h, 12.v, 4.h, 12.v),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowdown,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ),
                            hintText: "lbl_eur".tr,
                            items: k59ModelObj?.dropdownItemList ?? [],
                            prefix: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 16.h,
                                vertical: 12.v,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  12.h,
                                ),
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgFlags,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 49.v,
                            ),
                            borderDecoration:
                                DropDownStyleHelper.fillOnPrimaryContainer,
                            fillColor: theme.colorScheme.onPrimaryContainer,
                            onChanged: (value) {
                              context
                                  .read<K59Bloc>()
                                  .add(ChangeDropDownEvent(value: value));
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.v),
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
          BlocSelector<K59Bloc, K59State, TextEditingController?>(
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
                borderDecoration:
                    TextFormFieldStyleHelper.fillOnPrimaryContainer,
                fillColor: theme.colorScheme.onPrimaryContainer,
              );
            },
          ),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            text: "lbl_send_link".tr.toUpperCase(),
            rightIcon: Container(
              margin: EdgeInsets.only(left: 30.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgIconsBlack90032x32,
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
