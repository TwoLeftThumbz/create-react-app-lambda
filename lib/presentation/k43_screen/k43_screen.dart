import '../k43_screen/widgets/buttonsmall_item_widget.dart';
import 'bloc/k43_bloc.dart';
import 'models/buttonsmall_item_model.dart';
import 'models/k43_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k47_page/k47_page.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_bottom_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_outlined_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class K43Screen extends StatelessWidget {
  K43Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<K43Bloc>(
      create: (context) => K43Bloc(K43State(
        k43ModelObj: K43Model(),
      ))
        ..add(K43InitialEvent()),
      child: K43Screen(),
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
              _buildButtonSmall(context),
              SizedBox(height: 18.v),
              BlocBuilder<K43Bloc, K43State>(
                builder: (context, state) {
                  return SizedBox(
                    height: 4.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: state.sliderIndex,
                      count: state.k43ModelObj?.buttonsmallItemList.length ?? 0,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 8,
                        activeDotColor: appTheme.black900.withOpacity(0.2),
                        dotColor: appTheme.black900.withOpacity(0.19),
                        dotHeight: 4.v,
                        dotWidth: 8.h,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 18.v),
              _buildDataRows(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
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
        text: "lbl_stats".tr,
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
  Widget _buildButtonSmall(BuildContext context) {
    return BlocBuilder<K43Bloc, K43State>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 380.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              state.sliderIndex = index;
            },
          ),
          itemCount: state.k43ModelObj?.buttonsmallItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            ButtonsmallItemModel model =
                state.k43ModelObj?.buttonsmallItemList[index] ??
                    ButtonsmallItemModel();
            return ButtonsmallItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDataRows(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: AppDecoration.outlineBlack900261.copyWith(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomOutlinedButton(
                  width: 56.h,
                  text: "lbl_dc".tr,
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 8.v,
                    bottom: 4.v,
                  ),
                  child: _buildLabels(
                    context,
                    userName: "lbl_dominick_cobb".tr,
                    purchased: "lbl_highest_spent".tr,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    bottom: 21.v,
                  ),
                  child: Text(
                    "lbl_150_215_usd".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 48.v,
                width: 56.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIconsWhiteA70027x33,
                  height: 27.v,
                  width: 33.h,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 9.v,
                  bottom: 4.v,
                ),
                child: _buildLabels(
                  context,
                  userName: "lbl_tony_stark".tr,
                  purchased: "lbl_highest_earned".tr,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 25.h,
                  top: 9.v,
                  bottom: 21.v,
                ),
                child: Text(
                  "lbl_1_500_000_usd".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 24.v),
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
  Widget _buildLabels(
    BuildContext context, {
    required String userName,
    required String purchased,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        Text(
          purchased,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.whiteA700,
          ),
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
