import 'bloc/three_bloc.dart';
import 'models/three_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/core/utils/validation_functions.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ThreeScreen extends StatelessWidget {
  ThreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ThreeBloc>(
      create: (context) => ThreeBloc(ThreeState(
        threeModelObj: ThreeModel(),
      ))
        ..add(ThreeInitialEvent()),
      child: ThreeScreen(),
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
                BlocSelector<ThreeBloc, ThreeState, TextEditingController?>(
                  selector: (state) => state.emailController,
                  builder: (context, emailController) {
                    return CustomTextFormField(
                      controller: emailController,
                      hintText: "lbl_your_email".tr,
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
                BlocSelector<ThreeBloc, ThreeState, TextEditingController?>(
                  selector: (state) => state.passwordController,
                  builder: (context, passwordController) {
                    return CustomTextFormField(
                      controller: passwordController,
                      hintText: "lbl_your_password".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: true,
                    );
                  },
                ),
                SizedBox(height: 8.v),
                CustomElevatedButton(
                  text: "lbl_sign_in".tr,
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 30.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconsWhiteA70024x24,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillOnPrimary,
                  buttonTextStyle: theme.textTheme.titleSmall!,
                ),
                SizedBox(height: 23.v),
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 294.h,
                    margin: EdgeInsets.symmetric(horizontal: 25.h),
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
      ),
    );
  }
}
