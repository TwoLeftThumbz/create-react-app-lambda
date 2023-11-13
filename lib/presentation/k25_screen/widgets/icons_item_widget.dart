import '../models/icons_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconsItemWidget extends StatelessWidget {
  IconsItemWidget(
    this.iconsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IconsItemModel iconsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray900041.copyWith(
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
              imagePath: iconsItemModelObj?.icons,
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
                  iconsItemModelObj.price!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 2.v),
                Text(
                  iconsItemModelObj.price1!,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
