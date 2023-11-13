import '../models/beneficiarylist_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BeneficiarylistItemWidget extends StatelessWidget {
  BeneficiarylistItemWidget(
    this.beneficiarylistItemModelObj, {
    Key? key,
    this.onTapCellGeneral,
  }) : super(
          key: key,
        );

  BeneficiarylistItemModel beneficiarylistItemModelObj;

  VoidCallback? onTapCellGeneral;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCellGeneral!.call();
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 24.v,
          bottom: 23.v,
        ),
        decoration: AppDecoration.outlineOnPrimaryContainer1,
        child: Row(
          children: [
            Container(
              height: 48.v,
              width: 56.h,
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: CustomImageView(
                imagePath: beneficiarylistItemModelObj?.newTeammember,
                height: 27.v,
                width: 33.h,
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 15.v,
                bottom: 15.v,
              ),
              child: Text(
                beneficiarylistItemModelObj.louisVuitton!,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
