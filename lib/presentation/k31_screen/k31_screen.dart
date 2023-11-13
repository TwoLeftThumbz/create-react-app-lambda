import '../k31_screen/widgets/bw_item_widget.dart';
import 'bloc/k31_bloc.dart';
import 'models/bw_item_model.dart';
import 'models/k31_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:bcc33_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class K31Screen extends StatelessWidget {
  const K31Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K31Bloc>(
      create: (context) => K31Bloc(K31State(
        k31ModelObj: K31Model(),
      ))
        ..add(K31InitialEvent()),
      child: K31Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90004,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.bGDark,
          child: Container(
            padding: EdgeInsets.all(24.h),
            decoration: AppDecoration.fillOnPrimary1.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomElevatedButton(
                  height: 17.v,
                  width: 112.h,
                  text: "lbl_beneficiaries".tr,
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIcons1,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.none,
                  buttonTextStyle: theme.textTheme.titleSmall!,
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 39.v),
                BlocSelector<K31Bloc, K31State, TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "msg_search_beneficiary".tr,
                    );
                  },
                ),
                SizedBox(height: 32.v),
                _buildBW(context),
                SizedBox(height: 23.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: AppDecoration.outlinePrimary5.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 16.v),
                          Text(
                            "lbl_fs".tr,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 4.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgFlags12x12,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            radius: BorderRadius.circular(
                              6.h,
                            ),
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 7.v,
                          bottom: 7.v,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "lbl_franziska_szab".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            Text(
                              "msg_ch6589144273241344867".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 23.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 96.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIcons1,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 4.v,
          bottom: 4.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_transfers".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgAvatarsGray900,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBW(BuildContext context) {
    return Expanded(
      child: BlocSelector<K31Bloc, K31State, K31Model?>(
        selector: (state) => state.k31ModelObj,
        builder: (context, k31ModelObj) {
          return ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 1.v,
              );
            },
            itemCount: k31ModelObj?.bwItemList.length ?? 0,
            itemBuilder: (context, index) {
              BwItemModel model =
                  k31ModelObj?.bwItemList[index] ?? BwItemModel();
              return BwItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
