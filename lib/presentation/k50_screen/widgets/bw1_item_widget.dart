import '../models/bw1_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Bw1ItemWidget extends StatelessWidget {
  Bw1ItemWidget(
    this.bw1ItemModelObj, {
    Key? key,
    this.onTapImgJNKK,
  }) : super(
          key: key,
        );

  Bw1ItemModel bw1ItemModelObj;

  VoidCallback? onTapImgJNKK;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24.v,
        bottom: 23.v,
      ),
      decoration: AppDecoration.outlineOnPrimaryContainer1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomOutlinedButton(
                  width: 56.h,
                  text: "lbl_bw".tr,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 8.v,
                    bottom: 4.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bw1ItemModelObj.louisVuitton!,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        bw1ItemModelObj.purchased!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.only(
              left: 29.h,
              top: 8.v,
              bottom: 8.v,
            ),
            decoration: AppDecoration.outlinePrimary7.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgIcons29,
              height: 32.adaptSize,
              width: 32.adaptSize,
              radius: BorderRadius.circular(
                16.h,
              ),
              alignment: Alignment.center,
              onTap: () {
                onTapImgJNKK!.call();
              },
            ),
          ),
        ],
      ),
    );
  }
}
