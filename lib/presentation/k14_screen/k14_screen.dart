import 'bloc/k14_bloc.dart';
import 'models/k14_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k47_page/k47_page.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class K14Screen extends StatelessWidget {
  K14Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<K14Bloc>(
      create: (context) => K14Bloc(K14State(
        k14ModelObj: K14Model(),
      ))
        ..add(K14InitialEvent()),
      child: K14Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<K14Bloc, K14State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 12.v,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCardList(context),
                  SizedBox(height: 16.v),
                  _buildCard4(context),
                  SizedBox(height: 15.v),
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
                  SizedBox(height: 2.v),
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
  Widget _buildCard4(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.fillOnSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWyrMonogram1WhiteA700,
            height: 16.v,
            width: 36.h,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 47.v),
          _buildMiddleRow(
            context,
            cardAccount: "lbl_business".tr,
          ),
          SizedBox(height: 47.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "msg_virtual_card".tr,
                style: theme.textTheme.titleSmall,
              ),
              Container(
                height: 16.v,
                width: 31.h,
                decoration: AppDecoration.fillOnSecondaryContainer,
                child: CustomImageView(
                  imagePath: ImageConstant.imgUnion,
                  height: 16.v,
                  width: 25.h,
                  alignment: Alignment.centerRight,
                ),
              ),
            ],
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

  /// Common widget
  Widget _buildMiddleRow(
    BuildContext context, {
    required String cardAccount,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Opacity(
          opacity: 0.5,
          child: Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              cardAccount,
              style: CustomTextStyles.titleMediumInterGray90001.copyWith(
                color: appTheme.gray90001.withOpacity(0.53),
              ),
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIcons9,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
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
