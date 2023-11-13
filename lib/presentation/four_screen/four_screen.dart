import 'bloc/four_bloc.dart';
import 'models/four_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/core/utils/validation_functions.dart';
import 'package:bcc33_s_application1/widgets/custom_checkbox_button.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FourScreen extends StatelessWidget {
  FourScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<FourBloc>(
      create: (context) => FourBloc(FourState(
        fourModelObj: FourModel(),
      ))
        ..add(FourInitialEvent()),
      child: FourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAbstractpatternFullscreenBlack900,
                  height: 498.v,
                  width: 345.h,
                  radius: BorderRadius.circular(
                    32.h,
                  ),
                ),
                SizedBox(height: 44.v),
                BlocSelector<FourBloc, FourState, TextEditingController?>(
                  selector: (state) => state.emailController,
                  builder: (context, emailController) {
                    return CustomTextFormField(
                      controller: emailController,
                      hintText: "msg_tom_riddle_hogwarts_edu".tr,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                    );
                  },
                ),
                SizedBox(height: 8.v),
                BlocSelector<FourBloc, FourState, TextEditingController?>(
                  selector: (state) => state.passwordController,
                  builder: (context, passwordController) {
                    return CustomTextFormField(
                      controller: passwordController,
                      hintText: "lbl_xxxxxxxxxxxxxxx".tr,
                      hintStyle: CustomTextStyles.titleSmallPrimary,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIcons24x24,
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
                    );
                  },
                ),
                SizedBox(height: 8.v),
                CustomElevatedButton(
                  text: "lbl_send".tr.toUpperCase(),
                ),
                SizedBox(height: 23.v),
                _buildSquare(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSquare(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
      child: BlocSelector<FourBloc, FourState, bool?>(
        selector: (state) => state.square,
        builder: (context, square) {
          return CustomCheckboxButton(
            text: "msg_lorem_ipsum_dolor3".tr,
            isExpandedText: true,
            value: square,
            textStyle: theme.textTheme.labelMedium,
            onChange: (value) {
              context.read<FourBloc>().add(ChangeCheckBoxEvent(value: value));
            },
          );
        },
      ),
    );
  }
}
