import 'bloc/five_bloc.dart';
import 'models/five_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class FiveScreen extends StatelessWidget {
  const FiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FiveBloc>(
      create: (context) => FiveBloc(FiveState(
        fiveModelObj: FiveModel(),
      ))
        ..add(FiveInitialEvent()),
      child: FiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 4.v,
          ),
          child: Column(
            children: [
              _buildBalanceCardBig(context),
              SizedBox(height: 40.v),
              _buildCardList(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_overview".tr,
        margin: EdgeInsets.only(left: 40.h),
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
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.5,
            child: Container(
              decoration: AppDecoration.outlinePink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 23.v),
                    child: Text(
                      "lbl_1_08".tr,
                      style: CustomTextStyles.titleSmallGray90002,
                    ),
                  ),
                  Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 23.v),
                    padding: EdgeInsets.all(3.h),
                    decoration: AppDecoration.fillGray90002,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 9.adaptSize,
                      width: 9.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            "lbl_total_balance".tr,
            style: CustomTextStyles.titleSmallGray90002,
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              right: 48.h,
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 35.v,
                    bottom: 15.v,
                  ),
                  child: Text(
                    "lbl".tr,
                    style: CustomTextStyles.headlineSmallGray90002,
                  ),
                ),
                Text(
                  "lbl_178_467".tr,
                  style: CustomTextStyles.displayLargeGray90002,
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            decoration: AppDecoration.outlineOnErrorContainer,
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
                BlocSelector<FiveBloc, FiveState, bool?>(
                  selector: (state) => state.isSelectedSwitch,
                  builder: (context, isSelectedSwitch) {
                    return CustomSwitch(
                      margin: EdgeInsets.only(
                        left: 8.h,
                        top: 24.v,
                      ),
                      value: isSelectedSwitch,
                      onChange: (value) {
                        context
                            .read<FiveBloc>()
                            .add(ChangeSwitchEvent(value: value));
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Text(
            "lbl_cards".tr,
            style: theme.textTheme.titleSmall,
          ),
        ),
        SizedBox(height: 15.v),
        SizedBox(
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
        ),
      ],
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
}
