import '../models/todaysection_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TodaysectionItemWidget extends StatelessWidget {
  TodaysectionItemWidget(
    this.todaysectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TodaysectionItemModel todaysectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCellGeneral(context);
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 8.v,
          bottom: 7.v,
        ),
        decoration: AppDecoration.outlineGray300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 48.v,
              width: 56.h,
              margin: EdgeInsets.only(bottom: 16.v),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 20.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.img1,
                height: 5.v,
                width: 32.h,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 8.v,
                bottom: 21.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_jnkk_ui_kit".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  Text(
                    "lbl_purchase".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                bottom: 23.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_1895_eur".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Opacity(
                      opacity: 0.5,
                      child: Text(
                        "lbl_2045_usd".tr,
                        style: CustomTextStyles.labelLargeInterWhiteA700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
