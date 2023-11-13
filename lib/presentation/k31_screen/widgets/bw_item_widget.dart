import '../models/bw_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BwItemWidget extends StatelessWidget {
  BwItemWidget(
    this.bwItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BwItemModel bwItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24.v,
        bottom: 23.v,
      ),
      decoration: AppDecoration.outlineOnPrimaryContainer1,
      child: Row(
        children: [
          CustomOutlinedButton(
            width: 56.h,
            text: "lbl_bw".tr,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 8.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bwItemModelObj.louisVuitton!,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  bwItemModelObj.purchased!,
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
