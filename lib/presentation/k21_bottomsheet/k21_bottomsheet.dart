import 'bloc/k21_bloc.dart';
import 'models/k21_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/core/utils/validation_functions.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class K21Bottomsheet extends StatelessWidget {
  const K21Bottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K21Bloc>(
      create: (context) => K21Bloc(K21State(
        k21ModelObj: K21Model(),
      ))
        ..add(K21InitialEvent()),
      child: K21Bottomsheet(),
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
                BlocSelector<K21Bloc, K21State, TextEditingController?>(
                  selector: (state) => state.nameController,
                  builder: (context, nameController) {
                    return CustomTextFormField(
                      controller: nameController,
                      hintText: "lbl_name_card".tr,
                      validator: (value) {
                        if (!isText(value)) {
                          return "err_msg_please_enter_valid_text".tr;
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 11.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.outlineGray,
                      filled: false,
                    );
                  },
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 16.v,
                    bottom: 15.v,
                  ),
                  decoration: AppDecoration.outlineGray90004,
                  child: Column(
                    children: [
                      BlocSelector<K21Bloc, K21State, TextEditingController?>(
                        selector: (state) => state.kingTChallaController,
                        builder: (context, kingTChallaController) {
                          return CustomTextFormField(
                            controller: kingTChallaController,
                            hintText: "lbl_ex_shopping".tr,
                            textInputAction: TextInputAction.done,
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineOnPrimary,
                            fillColor: theme.colorScheme.onPrimaryContainer,
                          );
                        },
                      ),
                      SizedBox(height: 8.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgIcons14,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "msg_maximum_25_characters".tr,
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                        text: "lbl_confirm".tr.toUpperCase(),
                      ),
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
                      "msg_lorem_ipsum_dolor5".tr,
                      maxLines: 3,
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
}
