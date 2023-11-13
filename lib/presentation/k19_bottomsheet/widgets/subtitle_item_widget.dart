import '../models/subtitle_item_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubtitleItemWidget extends StatelessWidget {
  SubtitleItemWidget(
    this.subtitleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SubtitleItemModel subtitleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 22.v,
        bottom: 21.v,
      ),
      decoration: AppDecoration.outlineGray90004,
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
                  subtitleItemModelObj.subtitle!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 5.v),
                Text(
                  subtitleItemModelObj.harryPotter!,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20.v,
              right: 28.h,
              bottom: 3.v,
            ),
            child: Text(
              subtitleItemModelObj.copied!,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
