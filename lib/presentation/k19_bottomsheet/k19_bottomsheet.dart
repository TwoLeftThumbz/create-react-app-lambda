import '../k19_bottomsheet/widgets/subtitle_item_widget.dart';
import 'bloc/k19_bloc.dart';
import 'models/k19_model.dart';
import 'models/subtitle_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/core/utils/validation_functions.dart';
import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class K19Bottomsheet extends StatelessWidget {
  const K19Bottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K19Bloc>(
      create: (context) => K19Bloc(K19State(
        k19ModelObj: K19Model(),
      ))
        ..add(K19InitialEvent()),
      child: K19Bottomsheet(),
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
            padding: EdgeInsets.all(32.h),
            decoration: AppDecoration.fillBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder40,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_cards_details".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 23.v),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  decoration: AppDecoration.outlineGray90004,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_card_pin".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 6.v),
                      BlocBuilder<K19Bloc, K19State>(
                        builder: (context, state) {
                          return CustomTextFormField(
                            controller: state.passwordController,
                            hintText: "lbl3".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                              onTap: () {
                                context.read<K19Bloc>().add(
                                    ChangePasswordVisibilityEvent(
                                        value: !state.isShowPassword));
                              },
                              child: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgIcons12,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: 56.v,
                            ),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: state.isShowPassword,
                            contentPadding: EdgeInsets.only(
                              left: 16.h,
                              top: 19.v,
                              bottom: 19.v,
                            ),
                            borderDecoration: TextFormFieldStyleHelper
                                .outlineOnPrimaryContainer,
                            fillColor: theme.colorScheme.onPrimaryContainer,
                          );
                        },
                      ),
                      SizedBox(height: 22.v),
                    ],
                  ),
                ),
                _buildSubtitle(context),
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.only(right: 28.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_billing_address".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 2.v),
                          SizedBox(
                            width: 182.h,
                            child: Text(
                              "msg_number_4_privet".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 51.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "lbl_copied".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubtitle(BuildContext context) {
    return BlocSelector<K19Bloc, K19State, K19Model?>(
      selector: (state) => state.k19ModelObj,
      builder: (context, k19ModelObj) {
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
          itemCount: k19ModelObj?.subtitleItemList.length ?? 0,
          itemBuilder: (context, index) {
            SubtitleItemModel model =
                k19ModelObj?.subtitleItemList[index] ?? SubtitleItemModel();
            return SubtitleItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
