import 'bloc/k13_bloc.dart';
import 'models/k13_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k47_page/k47_page.dart';
import 'package:bcc33_s_application1/widgets/custom_bottom_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class K13Screen extends StatelessWidget {
  K13Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<K13Bloc>(
      create: (context) => K13Bloc(K13State(
        k13ModelObj: K13Model(),
      ))
        ..add(K13InitialEvent()),
      child: K13Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<K13Bloc, K13State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 22.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 41.v),
                  _buildCardList(context),
                  SizedBox(height: 24.v),
                  _buildDataGraph(context),
                  SizedBox(height: 23.v),
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
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCardList(BuildContext context) {
    return SizedBox(
      height: 344.v,
      width: 361.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildCard(
            context,
            cardAccount: "lbl_business".tr,
            cardFrozen: "msg_physical_card".tr,
          ),
          _buildCard(
            context,
            cardAccount: "lbl_personal".tr,
            cardFrozen: "msg_physical_card".tr,
          ),
          _buildCard(
            context,
            cardAccount: "lbl_business".tr,
            cardFrozen: "msg_physical_card".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDataGraph(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(top: 122.v),
                  child: Text(
                    "lbl_0".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              Container(
                height: 135.v,
                width: 288.h,
                margin: EdgeInsets.only(
                  left: 8.h,
                  bottom: 3.v,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMiddlePrimary,
                      height: 135.v,
                      width: 265.h,
                      alignment: Alignment.centerLeft,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Opacity(
                        opacity: 0.5,
                        child: Text(
                          "lbl_31_075_50".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Container(
            decoration: AppDecoration.outlineGray90003,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 27.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_earning".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Container(
                  height: 4.v,
                  width: 8.h,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 32.v,
                    bottom: 12.v,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 27.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_spending".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Container(
                  height: 4.v,
                  width: 8.h,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 32.v,
                    bottom: 12.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.2),
                  ),
                ),
                CustomElevatedButton(
                  height: 33.v,
                  width: 119.h,
                  text: "lbl_last_30_days2".tr,
                  margin: EdgeInsets.only(
                    left: 30.h,
                    top: 16.v,
                  ),
                  buttonStyle: CustomButtonStyles.fillBlack,
                  buttonTextStyle: theme.textTheme.titleSmall!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildCard(
    BuildContext context, {
    required String cardAccount,
    required String cardFrozen,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 15.v),
          CustomImageView(
            imagePath: ImageConstant.imgWyrMonogram1,
            height: 16.v,
            width: 36.h,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 39.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.v),
                child: Text(
                  cardAccount,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgChipicon,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ],
          ),
          SizedBox(height: 24.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 17.v,
                  bottom: 13.v,
                ),
                child: Text(
                  cardFrozen,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFlag,
                height: 48.adaptSize,
                width: 48.adaptSize,
              ),
            ],
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Icons4:
        return "/";
      case BottomBarEnum.Icons5:
        return "/";
      case BottomBarEnum.Icons6:
        return AppRoutes.k47Page;
      case BottomBarEnum.Icons7:
        return "/";
      case BottomBarEnum.Icons8:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.k47Page:
        return K47Page.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
