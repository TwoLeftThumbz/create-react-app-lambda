import 'bloc/k18_bloc.dart';
import 'models/k18_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k47_page/k47_page.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_bottom_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class K18Screen extends StatelessWidget {
  K18Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<K18Bloc>(
      create: (context) => K18Bloc(K18State(
        k18ModelObj: K18Model(),
      ))
        ..add(K18InitialEvent()),
      child: K18Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<K18Bloc, K18State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 5.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(right: 2.h),
                    child: _buildCard(
                      context,
                      cardAccount: "lbl_business".tr,
                      cardFrozenText: "msg_physical_card".tr,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  _buildOptions(context),
                  SizedBox(height: 47.v),
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
  Widget _buildOptions(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.symmetric(horizontal: 80.h),
      decoration: AppDecoration.outlineOnPrimaryContainer1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: 14.h,
                bottom: 24.v,
              ),
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
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                right: 14.h,
                bottom: 24.v,
              ),
              child: CustomIconButton(
                height: 48.adaptSize,
                width: 48.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: CustomImageView(
                  imagePath: ImageConstant.imgIcons48x48,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                bottom: 24.v,
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
          ),
        ],
      ),
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
            cardAccount: "lbl_personal".tr,
            cardFrozenText: "lbl_physical_card".tr,
          ),
          _buildCard(
            context,
            cardAccount: "lbl_business2".tr,
            cardFrozenText: "msg_physical_card".tr,
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
    required String cardFrozenText,
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
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.imgWyrMonogram1,
            height: 16.v,
            width: 36.h,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 43.v),
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
          SizedBox(height: 28.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 17.v,
                  bottom: 13.v,
                ),
                child: Text(
                  cardFrozenText,
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
