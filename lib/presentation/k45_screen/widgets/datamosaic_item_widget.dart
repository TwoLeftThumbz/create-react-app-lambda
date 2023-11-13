import '../models/datamosaic_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DatamosaicItemWidget extends StatelessWidget {
  DatamosaicItemWidget(
    this.datamosaicItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DatamosaicItemModel datamosaicItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 105.h,
        bottom: 90.v,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 115.v),
          Text(
            datamosaicItemModelObj.fiftyFive!,
            style: CustomTextStyles.headlineSmallPrimary,
          ),
          SizedBox(height: 2.v),
          Opacity(
            opacity: 0.5,
            child: Text(
              datamosaicItemModelObj.officeExpenses!,
              style: CustomTextStyles.labelLargeInter,
            ),
          ),
        ],
      ),
    );
  }
}
