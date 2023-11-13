import '../models/icons2_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Icons2ItemWidget extends StatelessWidget {
  Icons2ItemWidget(
    this.icons2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Icons2ItemModel icons2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.h),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 64.adaptSize,
            width: 64.adaptSize,
            padding: EdgeInsets.all(20.h),
            decoration: IconButtonStyleHelper.fillOnPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgIconsPrimary,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 14.v,
              bottom: 14.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  icons2ItemModelObj.price!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 1.v),
                Text(
                  icons2ItemModelObj.price1!,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgIconsWhiteA700,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(
              top: 12.v,
              right: 6.h,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }
}
