import '../models/subtitle5_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Subtitle5ItemWidget extends StatelessWidget {
  Subtitle5ItemWidget(
    this.subtitle5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Subtitle5ItemModel subtitle5ItemModelObj;

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
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle5ItemModelObj.subtitle!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 2.v),
                Text(
                  subtitle5ItemModelObj.harryPotter!,
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
              subtitle5ItemModelObj.copied!,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
