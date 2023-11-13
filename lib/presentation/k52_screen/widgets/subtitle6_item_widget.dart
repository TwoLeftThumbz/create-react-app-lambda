import '../models/subtitle6_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Subtitle6ItemWidget extends StatelessWidget {
  Subtitle6ItemWidget(
    this.subtitle6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Subtitle6ItemModel subtitle6ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 14.v,
        bottom: 13.v,
      ),
      decoration: AppDecoration.outlineOnPrimaryContainer1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle6ItemModelObj.subtitle!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 5.v),
                Text(
                  subtitle6ItemModelObj.harryPotter!,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 24.v,
              right: 4.h,
            ),
            child: Text(
              subtitle6ItemModelObj.copied!,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
