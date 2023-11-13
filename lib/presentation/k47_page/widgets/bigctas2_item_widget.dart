import '../models/bigctas2_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Bigctas2ItemWidget extends StatelessWidget {
  Bigctas2ItemWidget(
    this.bigctas2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Bigctas2ItemModel bigctas2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 23.v,
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
          SizedBox(height: 45.v),
          CustomImageView(
            imagePath: bigctas2ItemModelObj?.newbalance,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          SizedBox(height: 10.v),
          Text(
            bigctas2ItemModelObj.harryPotter!,
            style: theme.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
