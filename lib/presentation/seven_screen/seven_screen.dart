import 'bloc/seven_bloc.dart';
import 'models/seven_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class SevenScreen extends StatelessWidget {
  const SevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SevenBloc>(
      create: (context) => SevenBloc(SevenState(
        sevenModelObj: SevenModel(),
      ))
        ..add(SevenInitialEvent()),
      child: SevenScreen(),
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
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "lbl_1_08".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIcons16x16,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 32.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_total_balance".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 5.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 33.v,
                  bottom: 17.v,
                ),
                child: Text(
                  "lbl".tr,
                  style: CustomTextStyles.headlineSmallPrimary,
                ),
              ),
              Text(
                "lbl2".tr,
                style: CustomTextStyles.displayLargePrimary,
              ),
            ],
          ),
          SizedBox(height: 2.v),
          Container(
            decoration: AppDecoration.outlineGray90003,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                BlocSelector<SevenBloc, SevenState, bool?>(
                  selector: (state) => state.isSelectedSwitch,
                  builder: (context, isSelectedSwitch) {
                    return CustomSwitch(
                      margin: EdgeInsets.only(top: 24.v),
                      value: isSelectedSwitch,
                      onChange: (value) {
                        context
                            .read<SevenBloc>()
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
}
