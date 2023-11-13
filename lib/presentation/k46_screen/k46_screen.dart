import 'bloc/k46_bloc.dart';
import 'models/k46_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k47_page/k47_page.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class K46Screen extends StatelessWidget {
  K46Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<K46Bloc>(
      create: (context) => K46Bloc(K46State(
        k46ModelObj: K46Model(),
      ))
        ..add(K46InitialEvent()),
      child: K46Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<K46Bloc, K46State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 10.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10.v),
                  CustomImageView(
                    imagePath: ImageConstant
                        .imgAbstractpatternFullscreenBlack900200x361,
                    height: 200.v,
                    width: 361.h,
                    radius: BorderRadius.circular(
                      16.h,
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: 316.h,
                      margin: EdgeInsets.symmetric(horizontal: 22.h),
                      child: Text(
                        "msg_lorem_ipsum_dolor3".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 36.v),
                  _buildMenuList(context),
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
        text: "lbl_manage".tr,
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
  Widget _buildMenuList(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: _buildContent(context),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: _buildContent(context),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            child: _buildContent(context),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIcons36,
                  height: 27.v,
                  width: 33.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 11.h,
                    top: 6.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_payment_links".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
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
  Widget _buildContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 22.v,
        bottom: 21.v,
      ),
      decoration: AppDecoration.outlineBluegray90001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIcons34,
            height: 27.v,
            width: 28.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_beneficiaries2".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(right: 4.h),
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
