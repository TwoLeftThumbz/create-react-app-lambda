import 'bloc/eight_bloc.dart';
import 'models/eight_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k47_page/k47_page.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class EightScreen extends StatelessWidget {
  EightScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<EightBloc>(
      create: (context) => EightBloc(EightState(
        eightModelObj: EightModel(),
      ))
        ..add(EightInitialEvent()),
      child: EightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<EightBloc, EightState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 4.v),
                  _buildBalanceCardBig(context),
                  SizedBox(height: 16.v),
                  _buildTransactionList(context),
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
        text: "lbl_accounts".tr,
        margin: EdgeInsets.only(left: 8.h),
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
  Widget _buildBalanceCardBig(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.5,
            child: Container(
              decoration: AppDecoration.outlineGray,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 23.v),
                    child: Text(
                      "lbl_1_08".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIcons16x16,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 23.v),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "lbl_total_balance".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(right: 59.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 35.v,
                    bottom: 15.v,
                  ),
                  child: Text(
                    "lbl".tr,
                    style: CustomTextStyles.headlineSmallPrimary,
                  ),
                ),
                Text(
                  "lbl_178_467".tr,
                  style: CustomTextStyles.displayLargePrimary,
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            decoration: AppDecoration.outlineGray90003,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFlagsGray50,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  margin: EdgeInsets.only(top: 24.v),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 29.v),
                  child: Text(
                    "lbl_privacy".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 24.v,
                  ),
                  padding: EdgeInsets.all(4.h),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder12,
                  ),
                  child: Container(
                    height: 16.v,
                    width: 24.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary.withOpacity(1),
                      borderRadius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionList(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.bGDark.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIcons2,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "lbl_transactions".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 24.v),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            decoration: AppDecoration.fillOnPrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder32,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 24.v,
                    bottom: 23.v,
                  ),
                  decoration: AppDecoration.outlineGray300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 48.v,
                        width: 56.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.h,
                          vertical: 20.v,
                        ),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.img1,
                          height: 5.v,
                          width: 32.h,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 8.v,
                          bottom: 5.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_jnkk_ui_kit".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            Text(
                              "lbl_purchase".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        child: Column(
                          children: [
                            Text(
                              "lbl_1895_eur".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Opacity(
                                opacity: 0.5,
                                child: Text(
                                  "lbl_2045_usd".tr,
                                  style:
                                      CustomTextStyles.labelLargeInterWhiteA700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 24.v,
                    bottom: 23.v,
                  ),
                  decoration: AppDecoration.outlineGray300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 48.v,
                        width: 56.h,
                        padding: EdgeInsets.all(16.h),
                        decoration: AppDecoration.fillBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImg,
                          height: 16.v,
                          width: 24.h,
                          radius: BorderRadius.circular(
                            8.h,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 8.v,
                          bottom: 5.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_nike_store".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            Text(
                              "lbl_purchase".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.v),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "lbl_751_gbp".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                "lbl_617_49_usd".tr,
                                style:
                                    CustomTextStyles.labelLargeInterWhiteA700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIcons3,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "msg_swipe_up_to_see".tr,
                        style: CustomTextStyles.labelMediumWhiteA700_1,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 23.v),
              ],
            ),
          ),
          SizedBox(height: 12.v),
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
