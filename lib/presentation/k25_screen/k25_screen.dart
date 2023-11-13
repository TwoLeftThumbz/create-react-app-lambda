import '../k25_screen/widgets/bigctas_item_widget.dart';
import '../k25_screen/widgets/icons_item_widget.dart';
import 'bloc/k25_bloc.dart';
import 'models/bigctas_item_model.dart';
import 'models/icons_item_model.dart';
import 'models/k25_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class K25Screen extends StatelessWidget {
  const K25Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K25Bloc>(
      create: (context) => K25Bloc(K25State(
        k25ModelObj: K25Model(),
      ))
        ..add(K25InitialEvent()),
      child: K25Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  decoration: AppDecoration.fillOnPrimary1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 240.v),
                      Container(
                        padding: EdgeInsets.all(24.h),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder32,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: AppDecoration.outlinePrimary2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_available_funds".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  SizedBox(height: 15.v),
                                  _buildIcons(context),
                                  SizedBox(height: 4.v),
                                ],
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "lbl_beneficiaries".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            SizedBox(height: 15.v),
                            _buildBigCTAS(context),
                          ],
                        ),
                      ),
                      SizedBox(height: 3.v),
                      CustomIconButton(
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        padding: EdgeInsets.all(12.h),
                        decoration:
                            IconButtonStyleHelper.fillOnPrimaryContainer,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIcons16,
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Container(
                          width: 294.h,
                          margin: EdgeInsets.symmetric(horizontal: 33.h),
                          child: Text(
                            "msg_lorem_ipsum_dolor3".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 64.v),
                _buildNavTop(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildIcons(BuildContext context) {
    return BlocSelector<K25Bloc, K25State, K25Model?>(
      selector: (state) => state.k25ModelObj,
      builder: (context, k25ModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: k25ModelObj?.iconsItemList.length ?? 0,
          itemBuilder: (context, index) {
            IconsItemModel model =
                k25ModelObj?.iconsItemList[index] ?? IconsItemModel();
            return IconsItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBigCTAS(BuildContext context) {
    return Container(
      height: 144.v,
      decoration: AppDecoration.outlineGray3002,
      child: BlocSelector<K25Bloc, K25State, K25Model?>(
        selector: (state) => state.k25ModelObj,
        builder: (context, k25ModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: k25ModelObj?.bigctasItemList.length ?? 0,
            itemBuilder: (context, index) {
              BigctasItemModel model =
                  k25ModelObj?.bigctasItemList[index] ?? BigctasItemModel();
              return BigctasItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNavTop(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 40.h,
          right: 16.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 7.v),
              child: Text(
                "lbl_transfers".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: CustomIconButton(
                height: 32.adaptSize,
                width: 32.adaptSize,
                padding: EdgeInsets.all(6.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgAvatarsGray900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
