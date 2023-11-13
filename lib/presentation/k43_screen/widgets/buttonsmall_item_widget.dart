import '../models/buttonsmall_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonsmallItemWidget extends StatelessWidget {
  ButtonsmallItemWidget(
    this.buttonsmallItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ButtonsmallItemModel buttonsmallItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(top: 270.v),
                  child: Text(
                    "lbl_0".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              Container(
                height: 283.v,
                width: 288.h,
                margin: EdgeInsets.only(
                  left: 8.h,
                  bottom: 3.v,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMiddlePrimary283x265,
                      height: 283.v,
                      width: 265.h,
                      alignment: Alignment.centerLeft,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Opacity(
                        opacity: 0.5,
                        child: Text(
                          "lbl_31_075_50".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Container(
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
                  width: 119.h,
                  text: "lbl_last_30_days2".tr,
                  margin: EdgeInsets.only(
                    left: 30.h,
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
