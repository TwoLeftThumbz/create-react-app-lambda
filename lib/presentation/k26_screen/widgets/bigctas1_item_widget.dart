import '../models/bigctas1_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Bigctas1ItemWidget extends StatelessWidget {
  Bigctas1ItemWidget(
    this.bigctas1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Bigctas1ItemModel bigctas1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.v),
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
            imagePath: bigctas1ItemModelObj?.newbeneficiary,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: 77.h,
            child: Text(
              bigctas1ItemModelObj.harryPotter!,
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
