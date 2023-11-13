import '../models/cancelled_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CancelledItemWidget extends StatelessWidget {
  CancelledItemWidget(
    this.cancelledItemModelObj, {
    Key? key,
    this.onTapRow,
  }) : super(
          key: key,
        );

  CancelledItemModel cancelledItemModelObj;

  VoidCallback? onTapRow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRow!.call();
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 24.v,
          bottom: 23.v,
        ),
        decoration: AppDecoration.outlineOnPrimaryContainer1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 210.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 46.v,
                    width: 56.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIcons36,
                      height: 27.v,
                      width: 33.h,
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.v,
                      bottom: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cancelledItemModelObj.price!,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          cancelledItemModelObj.email!,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 16.v,
                right: 16.h,
                bottom: 12.v,
              ),
              child: Text(
                cancelledItemModelObj.lastDays!,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
