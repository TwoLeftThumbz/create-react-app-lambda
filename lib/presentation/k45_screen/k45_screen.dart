import '../k45_screen/widgets/datamosaic_item_widget.dart';
import 'bloc/k45_bloc.dart';
import 'models/datamosaic_item_model.dart';
import 'models/k45_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k47_page/k47_page.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_bottom_bar.dart';
import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';
import 'package:bcc33_s_application1/widgets/custom_switch.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class K45Screen extends StatelessWidget {
  K45Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<K45Bloc>(
      create: (context) => K45Bloc(K45State(
        k45ModelObj: K45Model(),
      ))
        ..add(K45InitialEvent()),
      child: K45Screen(),
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
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.fillOnPrimary1,
          child: Column(
            children: [
              _buildDataGraph(context),
              SizedBox(height: 18.v),
              SizedBox(
                height: 4.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 8,
                    activeDotColor: appTheme.black900.withOpacity(0.2),
                    dotColor: appTheme.black900.withOpacity(0.19),
                    dotHeight: 4.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              _buildDataRows(context),
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
        text: "lbl_stats".tr,
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
  Widget _buildDataGraph(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<K45Bloc, K45State>(
            builder: (context, state) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 283.v,
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
                itemCount: state.k45ModelObj?.datamosaicItemList.length ?? 0,
                itemBuilder: (context, index, realIndex) {
                  DatamosaicItemModel model =
                      state.k45ModelObj?.datamosaicItemList[index] ??
                          DatamosaicItemModel();
                  return DatamosaicItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          SizedBox(height: 16.v),
          Container(
            decoration: AppDecoration.outlineGray90003,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BlocSelector<K45Bloc, K45State, bool?>(
                  selector: (state) => state.isSelectedSwitch,
                  builder: (context, isSelectedSwitch) {
                    return CustomSwitch(
                      margin: EdgeInsets.only(
                        top: 20.v,
                        bottom: 4.v,
                      ),
                      value: isSelectedSwitch,
                      onChange: (value) {
                        context
                            .read<K45Bloc>()
                            .add(ChangeSwitchEvent(value: value));
                      },
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 26.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "lbl_percent".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  height: 33.v,
                  width: 98.h,
                  text: "lbl_expenses".tr,
                  margin: EdgeInsets.only(top: 16.v),
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
                Container(
                  height: 48.v,
                  width: 56.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 11.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIcons31,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_office_expenses2".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        "lbl_biggest_spend".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    bottom: 21.v,
                  ),
                  child: Text(
                    "lbl_31_075_usd".tr,
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
                decoration: AppDecoration.fillOnErrorContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgIcons32,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_utility_bills2".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    Text(
                      "lbl_smallest_spend".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 9.v,
                  bottom: 21.v,
                ),
                child: Text(
                  "lbl_2_337_5_usd".tr,
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
