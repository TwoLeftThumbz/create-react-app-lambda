import 'bloc/k16_bloc.dart';
import 'models/k16_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k47_page/k47_page.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_bottom_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class K16Screen extends StatelessWidget {
  K16Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<K16Bloc>(
      create: (context) => K16Bloc(K16State(
        k16ModelObj: K16Model(),
      ))
        ..add(K16InitialEvent()),
      child: K16Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<K16Bloc, K16State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 5.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 7.v),
                  _buildCard(
                    context,
                    wYRMonogramOne: ImageConstant.imgWyrMonogram1WhiteA700,
                    cardAccount: "lbl_business".tr,
                    chipIcon: ImageConstant.imgIcons11,
                    cardFrozen: "msg_card_frozen_1234".tr,
                  ),
                  SizedBox(height: 24.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 29.v),
                        child: CustomIconButton(
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.outlinePrimary,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIconsWhiteA70048x48,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 28.h),
                        child: Column(
                          children: [
                            Container(
                              height: 48.v,
                              width: 88.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 32.h,
                                vertical: 12.v,
                              ),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder24,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgIconsGray90004,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                alignment: Alignment.center,
                              ),
                            ),
                            SizedBox(height: 15.v),
                            Text(
                              "lbl_unfreeze_card".tr,
                              style: CustomTextStyles.labelMediumWhiteA700_1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 28.h,
                          bottom: 29.v,
                        ),
                        child: CustomIconButton(
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.outlinePrimary,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIcons10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 41.v),
                  _buildCardList(context),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIcons1,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_cards".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgAvatarsGray900,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCardList(BuildContext context) {
    return SizedBox(
      height: 272.v,
      width: 361.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          _buildCard(
            context,
            wYRMonogramOne: ImageConstant.imgWyrMonogram1,
            cardAccount: "lbl_business".tr,
            chipIcon: ImageConstant.imgChipicon,
            cardFrozen: "msg_physical_card".tr,
          ),
          _buildCard(
            context,
            wYRMonogramOne: ImageConstant.imgWyrMonogram1,
            cardAccount: "lbl_personal".tr,
            chipIcon: ImageConstant.imgChipicon,
            cardFrozen: "msg_physical_card".tr,
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
    required String wYRMonogramOne,
    required String cardAccount,
    required String chipIcon,
    required String cardFrozen,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillLightBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 15.v),
          CustomImageView(
            imagePath: wYRMonogramOne,
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
                imagePath: chipIcon,
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
