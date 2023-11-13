import '../models/bigctas_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BigctasItemWidget extends StatelessWidget {
  BigctasItemWidget(
    this.bigctasItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BigctasItemModel bigctasItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder24,
      ),
      width: 148.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 31.v),
          CustomImageView(
            imagePath: bigctasItemModelObj?.newbeneficiary,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: 77.h,
            child: Text(
              bigctasItemModelObj.harryPotter!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallGray90002,
            ),
          ),
        ],
      ),
    );
  }
}
