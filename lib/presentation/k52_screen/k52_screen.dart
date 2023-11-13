import '../k52_screen/widgets/subtitle6_item_widget.dart';
import 'bloc/k52_bloc.dart';
import 'models/k52_model.dart';
import 'models/subtitle6_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/core/utils/validation_functions.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:bcc33_s_application1/widgets/custom_outlined_button.dart';
import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class K52Screen extends StatelessWidget {
  K52Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<K52Bloc>(
      create: (context) => K52Bloc(K52State(
        k52ModelObj: K52Model(),
      ))
        ..add(K52InitialEvent()),
      child: K52Screen(),
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Container(
              margin: EdgeInsets.only(
                left: 16.h,
                right: 16.h,
                bottom: 5.v,
              ),
              padding: EdgeInsets.all(24.h),
              decoration: AppDecoration.fillOnPrimary1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder32,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: AppDecoration.outlineOnPrimaryContainer1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.v,
                            bottom: 24.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_bruce_wayne".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "lbl_eur_account".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 16.v),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 16.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgImg24x24,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                radius: BorderRadius.circular(
                                  12.h,
                                ),
                              ),
                              SizedBox(height: 4.v),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgFlagsOnerrorcontainer,
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                                radius: BorderRadius.circular(
                                  6.h,
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildSubtitle(context),
                  SizedBox(height: 24.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_iban2".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  _buildCellInfo(context),
                  SizedBox(height: 24.v),
                  Container(
                    padding: EdgeInsets.only(
                      top: 14.v,
                      bottom: 13.v,
                    ),
                    decoration: AppDecoration.outlineOnPrimaryContainer1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2.v,
                            bottom: 1.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_bic_swift".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              SizedBox(height: 3.v),
                              Text(
                                "lbl_adbcde12".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 24.v,
                            right: 4.h,
                          ),
                          child: Text(
                            "lbl_copied".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 14.v,
                      bottom: 13.v,
                    ),
                    decoration: AppDecoration.outlineOnPrimaryContainer1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 2.v,
                            bottom: 1.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_address".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              SizedBox(height: 3.v),
                              SizedBox(
                                width: 143.h,
                                child: Text(
                                  "msg_1007_mountain_drive_gotham".tr,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 58.v,
                            right: 4.h,
                          ),
                          child: Text(
                            "lbl_copied".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_email_address".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  _buildEmail(context),
                  SizedBox(height: 48.v),
                  _buildSend(context),
                  SizedBox(height: 16.v),
                  _buildDeleteBeneficiary(context),
                ],
              ),
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
        text: "lbl_manage".tr,
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
  Widget _buildSubtitle(BuildContext context) {
    return BlocSelector<K52Bloc, K52State, K52Model?>(
      selector: (state) => state.k52ModelObj,
      builder: (context, k52ModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount: k52ModelObj?.subtitle6ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Subtitle6ItemModel model =
                k52ModelObj?.subtitle6ItemList[index] ?? Subtitle6ItemModel();
            return Subtitle6ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCellInfo(BuildContext context) {
    return BlocSelector<K52Bloc, K52State, TextEditingController?>(
      selector: (state) => state.cellInfoController,
      builder: (context, cellInfoController) {
        return CustomTextFormField(
          controller: cellInfoController,
          hintText: "msg_gb80_barc_2004_01394".tr,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIcons26,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 56.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 16.h,
            top: 19.v,
            bottom: 19.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<K52Bloc, K52State, TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "msg_brucewayne_email_com".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSend(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_send".tr.toUpperCase(),
    );
  }

  /// Section Widget
  Widget _buildDeleteBeneficiary(BuildContext context) {
    return CustomOutlinedButton(
      height: 50.v,
      text: "msg_delete_beneficiary".tr,
      rightIcon: Container(
        margin: EdgeInsets.only(left: 30.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgIcons39,
          height: 32.adaptSize,
          width: 32.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlinePink,
    );
  }
}
