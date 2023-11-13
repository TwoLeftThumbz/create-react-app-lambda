import '../models/icons1_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Icons1ItemWidget extends StatelessWidget {
  Icons1ItemWidget(
    this.icons1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Icons1ItemModel icons1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineDeeppurple50.copyWith(
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
              left: 12.h,
              top: 13.v,
              bottom: 13.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  icons1ItemModelObj.price!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 2.v),
                Text(
                  icons1ItemModelObj.price1!,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.v),
            child: Text(
              icons1ItemModelObj.copied!,
              style: CustomTextStyles.labelMediumSpaceGroteskPrimary,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconsWhiteA700,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(
              top: 12.v,
              right: 8.h,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }
}
