import '../models/ninetyfour_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NinetyfourItemWidget extends StatelessWidget {
  NinetyfourItemWidget(
    this.ninetyfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetyfourItemModel ninetyfourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Opacity(
              opacity: 0.5,
              child: Text(
                "lbl_31_075_50".tr,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 78.v,
                width: 28.h,
                margin: EdgeInsets.only(top: 137.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ),
              Container(
                height: 144.v,
                width: 28.h,
                margin: EdgeInsets.only(
                  left: 3.h,
                  top: 71.v,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ),
              Container(
                height: 216.v,
                width: 28.h,
                margin: EdgeInsets.only(left: 24.h),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ),
              Container(
                height: 132.v,
                width: 28.h,
                margin: EdgeInsets.only(
                  left: 3.h,
                  top: 83.v,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ),
              Container(
                height: 106.v,
                width: 28.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  top: 109.v,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ),
              Container(
                height: 68.v,
                width: 28.h,
                margin: EdgeInsets.only(
                  left: 3.h,
                  top: 147.v,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ),
              Container(
                height: 157.v,
                width: 28.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  top: 58.v,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ),
              Container(
                height: 108.v,
                width: 28.h,
                margin: EdgeInsets.only(
                  left: 3.h,
                  top: 107.v,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Opacity(
              opacity: 0.5,
              child: Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "lbl_0".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            margin: EdgeInsets.only(left: 1.h),
            decoration: AppDecoration.outlineGray900031,
            child: DottedBorder(
              color: appTheme.gray90003,
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
                right: 1.h,
                bottom: 1.v,
              ),
              strokeWidth: 1.h,
              dashPattern: [
                4,
                4,
              ],
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 27.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.v),
                      child: Text(
                        "lbl_q1".tr,
                        style: CustomTextStyles.labelLargeInterPrimary,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.v),
                      child: Text(
                        "lbl_q2".tr,
                        style: CustomTextStyles.labelLargeInterPrimary,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.v),
                      child: Text(
                        "lbl_q3".tr,
                        style: CustomTextStyles.labelLargeInterPrimary,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.v),
                      child: Text(
                        "lbl_q4".tr,
                        style: CustomTextStyles.labelLargeInterPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            margin: EdgeInsets.only(left: 1.h),
            decoration: AppDecoration.outlineGray90003,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 25.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "lbl_earning".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Container(
                  height: 4.v,
                  width: 8.h,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 30.v,
                    bottom: 14.v,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 25.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "lbl_spending".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Container(
                  height: 4.v,
                  width: 8.h,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 30.v,
                    bottom: 14.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.2),
                  ),
                ),
                CustomElevatedButton(
                  height: 33.v,
                  width: 124.h,
                  text: "lbl_prev_quarters".tr,
                  margin: EdgeInsets.only(
                    left: 25.h,
                    top: 16.v,
                  ),
                  buttonStyle: CustomButtonStyles.fillBlack,
                  buttonTextStyle: theme.textTheme.titleSmall!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
